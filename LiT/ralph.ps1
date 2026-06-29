#requires -Version 5.1
<#
.SYNOPSIS
    Ralph loop driver for the LiT deliberation. Self-bootstrapping, capability-checked,
    window-aware, crash-safe, and resumable.

.DESCRIPTION
    Feeds PROMPT.md to `claude -p` once per iteration. The agent reads STATE.md, does one
    unit of work, writes its outputs, updates STATE.md, and exits. The driver re-runs until
    the deliberation reports completion.

    This version adds:
      - Prerequisite bootstrap. If PROMPT.md or STATE.md are missing, the driver writes
        canonical seeds so a fresh project runs with no manual setup. Existing files are
        never overwritten.
      - A capability self-test before any deliberation work. It asks Claude Code to exercise
        write, read, mkdir, web search, and web fetch, parses the result, and writes a
        PASS/FAIL line per capability to the log. If a required capability fails (web is
        required because the moderator performs research), the driver stops before wasting a
        usage window. Override with -ProceedOnCapabilityFail, skip with -SkipCapabilityCheck.

    Carried over:
      - Usage-window detection (session/usage/5-hour/weekly limits). On a limit it parses the
        reset time, waits, and resumes. A wait costs no iteration and no error.
      - UTF-8 end to end so the log is clean text and claude's output decodes correctly.
      - Absolute paths and a pinned .NET working directory so logs and claude target the
        project, not your home folder.
      - Live streaming of claude output, atomic run-state checkpoints, and Ctrl+C safety.

.NOTES
    If PowerShell blocks this as unsigned:
        powershell -ExecutionPolicy Bypass -File .\ralph.ps1
    or once per user:
        Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
#>

[CmdletBinding()]
param(
    [string]   $PromptFile             = '.\PROMPT.md',
    [string]   $StateFile              = '.\STATE.md',
    [string]   $CompletionString       = 'DELIBERATION COMPLETE',
    [string]   $DoneSentinel           = '.\DONE',
    [int]      $MaxIterations          = 0,
    [string[]] $ClaudeArgs             = @('-p'),
    [int]      $PollSeconds            = 2,
    [int]      $RetryWindowMinutes     = 20,
    [int]      $ResetBufferSeconds     = 90,
    [double]   $MaxWaitHours           = 0,
    [int]      $MaxConsecutiveErrors   = 5,
    [switch]   $SkipPermissions,
    [bool]     $ShowProgress           = $true,
    [switch]   $SkipCapabilityCheck,
    [switch]   $ProceedOnCapabilityFail,
    [int]      $StopAfterRound          = -1,
    [string]   $LogDir                 = '.\logs'
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

# ---------------------------------------------------------------------------
# Encoding: force UTF-8 so claude's output decodes correctly and the log is
# single-encoding plain text.
# ---------------------------------------------------------------------------
try {
    [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
    $OutputEncoding           = [System.Text.Encoding]::UTF8
    [Console]::InputEncoding  = [System.Text.Encoding]::UTF8
} catch { }
$script:Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
function Add-Utf8 {
    param([string]$Path, [string]$Text)
    [System.IO.File]::AppendAllText($Path, $Text, $script:Utf8NoBom)
}
function Write-Utf8File {
    param([string]$Path, [string]$Text)
    [System.IO.File]::WriteAllText($Path, $Text, $script:Utf8NoBom)
}

# ---------------------------------------------------------------------------
# Paths and run-state
# ---------------------------------------------------------------------------
$root        = (Get-Location).Path
# Keep .NET file APIs and any launched native process anchored to this folder.
[Environment]::CurrentDirectory = $root
$runStatePath = Join-Path $root '.ralph-runstate.json'
$stamp        = Get-Date -Format 'yyyyMMdd-HHmmss'
$logDirFull   = if ([System.IO.Path]::IsPathRooted($LogDir)) { $LogDir } else { Join-Path $root $LogDir }
if (-not (Test-Path $logDirFull)) { New-Item -ItemType Directory -Path $logDirFull | Out-Null }
$logFile      = Join-Path $logDirFull "ralph-$stamp.log"
$latestLog    = Join-Path $logDirFull 'ralph-latest.log'

function Write-Log {
    param([string]$Message, [string]$Level = 'INFO')
    $line = "{0} [{1}] {2}" -f (Get-Date -Format 's'), $Level, $Message
    Write-Host $line
    Add-Utf8 -Path $logFile   -Text ($line + [Environment]::NewLine)
    Add-Utf8 -Path $latestLog -Text ($line + [Environment]::NewLine)
}

function Save-RunState {
    param([hashtable]$State)
    $tmp = "$runStatePath.tmp"
    ($State | ConvertTo-Json -Depth 6) | Set-Content -Path $tmp -Encoding UTF8
    Move-Item -Path $tmp -Destination $runStatePath -Force
}

function Load-RunState {
    if (Test-Path $runStatePath) {
        try {
            $obj = Get-Content $runStatePath -Raw -Encoding UTF8 | ConvertFrom-Json
            $h = @{}
            $obj.PSObject.Properties | ForEach-Object { $h[$_.Name] = $_.Value }
            return $h
        } catch {
            Write-Log "Run-state file unreadable, starting fresh: $($_.Exception.Message)" 'WARN'
        }
    }
    return @{
        iteration         = 0
        consecutiveErrors = 0
        cumulativeWaitSec = 0
        startedUtc        = (Get-Date).ToUniversalTime().ToString('o')
        lastEvent         = 'init'
    }
}

# ---------------------------------------------------------------------------
# Completion check: read ONLY the live first non-empty line of the state file.
# ---------------------------------------------------------------------------
function Get-FirstLine {
    if (Test-Path $StateFile) {
        $first = (Get-Content $StateFile -Encoding UTF8 -ErrorAction SilentlyContinue |
                  Where-Object { $_.Trim() } | Select-Object -First 1)
        if ($first) { return $first.Trim() }
    }
    return $null
}
function Test-Complete {
    if (Test-Path $DoneSentinel) { return $true }
    $first = Get-FirstLine
    if ($first) {
        if ($first -eq $CompletionString)      { return $true }
        if ($first -like "$CompletionString*") { return $true }
    }
    return $false
}
function Get-CurrentRoundLabel {
    $first = Get-FirstLine
    if ($first) { return $first }
    return '(state file not found yet)'
}
function Get-CurrentRoundNumber {
    $first = Get-FirstLine
    if ($first -and $first -match '(?i)\bround\s+0*(\d+)') { return [int]$Matches[1] }
    return -1
}

# ---------------------------------------------------------------------------
# Rate-limit detection and reset-time parsing
# ---------------------------------------------------------------------------
$RateLimitPatterns = @(
    'session limit',
    'usage limit',
    "hit your[^\r\n]{0,20}limit",
    'limit reached',
    'limit will reset',
    '5-?hour limit',
    'weekly limit',
    'rate_limit_error',
    '\bresets?\b[^\r\n]{0,15}\d{1,2}(:\d{2})?\s*(am|pm)',
    'limit reached\|\d{10,13}'
)
$OverloadPatterns = @('Overloaded', '"type"\s*:\s*"overloaded_error"', '\b529\b', 'API Error: 429')

function Test-RateLimited {
    param([string]$Text, [int]$ExitCode)
    foreach ($p in $RateLimitPatterns) { if ($Text -match "(?i)$p") { return $true } }
    if ($ExitCode -ne 0 -and $Text -match '(?i)\blimit\b' -and $Text -match '(?i)\breset') { return $true }
    return $false
}
function Test-Overloaded {
    param([string]$Text)
    foreach ($p in $OverloadPatterns) { if ($Text -match "(?i)$p") { return $true } }
    return $false
}
function Get-ResetTime {
    param([string]$Text)
    if ($Text -match 'limit[^|]*\|\s*(\d{10,13})') {
        $num = [int64]$Matches[1]
        try {
            if ("$num".Length -ge 13) { return [DateTimeOffset]::FromUnixTimeMilliseconds($num).LocalDateTime }
            else                      { return [DateTimeOffset]::FromUnixTimeSeconds($num).LocalDateTime }
        } catch { }
    }
    if ($Text -match '(\d{4}-\d{2}-\d{2}[T ]\d{2}:\d{2}(:\d{2})?)') {
        try { return [datetime]::Parse($Matches[1]) } catch { }
    }
    if ($Text -match '(?i)reset[s]?\s*(at)?\s*([0-9]{1,2}(:[0-9]{2})?\s*(am|pm)?)') {
        $tod = $Matches[2].Trim()
        try {
            $t = [datetime]::Parse($tod)
            $target = (Get-Date).Date.AddHours($t.Hour).AddMinutes($t.Minute)
            if ($target -le (Get-Date)) { $target = $target.AddDays(1) }
            return $target
        } catch { }
    }
    return $null
}
function Wait-ForWindow {
    param([Nullable[datetime]]$ResetAt, [hashtable]$State)
    if ($ResetAt) {
        $target = $ResetAt.AddSeconds($ResetBufferSeconds)
        Write-Log "Usage window limit detected. Reset parsed for $($ResetAt.ToString('s')). Waiting until $($target.ToString('s'))." 'LIMIT'
    } else {
        $target = (Get-Date).AddMinutes($RetryWindowMinutes)
        Write-Log "Usage window limit detected. No reset time in output. Backing off $RetryWindowMinutes min, then re-checking." 'LIMIT'
    }
    if ($MaxWaitHours -gt 0) {
        $cap = (Get-Date).AddHours($MaxWaitHours)
        if ($target -gt $cap) {
            $target = $cap
            Write-Log "Wait capped at MaxWaitHours=$MaxWaitHours. Will re-check at $($target.ToString('s')) and wait again if still limited." 'WARN'
        }
    }
    $lastHeartbeat = Get-Date
    while ((Get-Date) -lt $target) {
        $remaining = ($target - (Get-Date))
        $sleep = [int][Math]::Min(30, [Math]::Max(1, $remaining.TotalSeconds))
        Start-Sleep -Seconds $sleep
        $State.cumulativeWaitSec = [int]$State.cumulativeWaitSec + $sleep
        if (((Get-Date) - $lastHeartbeat).TotalMinutes -ge 5) {
            $mins = [int](($target - (Get-Date)).TotalMinutes)
            Write-Log "Still waiting for the window. About $mins min remaining." 'LIMIT'
            Save-RunState $State
            $lastHeartbeat = Get-Date
        }
    }
    Write-Log 'Window should be open. Resuming.' 'LIMIT'
}

# ---------------------------------------------------------------------------
# Low-level claude call: streams to console live, captures for log + detection.
# ---------------------------------------------------------------------------
function Invoke-ClaudeRaw {
    param([string]$PromptText, [string[]]$ExtraArgs = @())
    $callArgs = @($ClaudeArgs)
    if ($ShowProgress)    { $callArgs += '--verbose' }
    if ($SkipPermissions) { $callArgs += '--dangerously-skip-permissions' }
    if ($ExtraArgs.Count) { $callArgs += $ExtraArgs }
    $out = $null
    # Tee-Object -Variable captures the output for the log and detection. Piping
    # its passthrough to Out-Host streams it to the console live without leaking
    # those lines into this function's return value (which must be only the object
    # below). The console render uses the UTF-8 console set at the top.
    $PromptText | & claude @callArgs 2>&1 | Tee-Object -Variable out | Out-Host
    $code = $LASTEXITCODE
    $text = ($out | Out-String)
    Add-Utf8 -Path $logFile   -Text ($text + [Environment]::NewLine)
    Add-Utf8 -Path $latestLog -Text ($text + [Environment]::NewLine)
    return [pscustomobject]@{ Text = $text; ExitCode = $code }
}

# Window-aware wrapper used by the capability check (waits through a limit).
function Invoke-ClaudeWindowAware {
    param([string]$PromptText, [hashtable]$State)
    while ($true) {
        $r = Invoke-ClaudeRaw -PromptText $PromptText
        if (Test-RateLimited -Text $r.Text -ExitCode $r.ExitCode) {
            Save-RunState $State
            Wait-ForWindow -ResetAt (Get-ResetTime -Text $r.Text) -State $State
            continue
        }
        if (Test-Overloaded -Text $r.Text) {
            Write-Log 'Transient overload. Backing off 60 sec.' 'WARN'
            Start-Sleep -Seconds 60
            continue
        }
        return $r
    }
}

# ---------------------------------------------------------------------------
# Prerequisite bootstrap. Writes seeds only if the files are absent.
# ---------------------------------------------------------------------------
function Write-Prerequisites {
    if (-not (Test-Path $PromptFile)) {
        Write-Utf8File -Path $PromptFile -Text $script:PromptSeed
        Write-Log "Wrote missing prerequisite: $PromptFile"
    }
    if (-not (Test-Path $StateFile)) {
        Write-Utf8File -Path $StateFile -Text $script:StateSeed
        Write-Log "Wrote missing prerequisite: $StateFile"
    }
}

# ---------------------------------------------------------------------------
# Capability self-test. Confirms the agent can write, read, mkdir, web-search,
# and web-fetch before any deliberation work is spent.
# ---------------------------------------------------------------------------
function Invoke-CapabilityCheck {
    param([hashtable]$State)
    Write-Log '=== Capability self-test: write, read, mkdir, web search, web fetch ==='
    $r = Invoke-ClaudeWindowAware -PromptText $script:CapabilityProbe -State $State

    $keys = 'WRITE','READ','MKDIR','WEBSEARCH','WEBFETCH'
    $results = @{}
    foreach ($k in $keys) {
        if ($r.Text -match "$k\s*=\s*(PASS|FAIL)") { $results[$k] = $Matches[1].ToUpper() }
        else { $results[$k] = 'UNKNOWN' }
    }
    foreach ($k in $keys) {
        $lvl = if ($results[$k] -eq 'PASS') { 'INFO' } else { 'WARN' }
        Write-Log ("Capability {0,-9} = {1}" -f $k, $results[$k]) $lvl
    }
    if ($r.ExitCode -ne 0) {
        Write-Log "Capability probe exited non-zero ($($r.ExitCode)). Treat results with caution." 'WARN'
    }

    $required = 'WRITE','READ','WEBSEARCH','WEBFETCH'
    $failed = @($required | Where-Object { $results[$_] -ne 'PASS' })
    if ($results['MKDIR'] -ne 'PASS') {
        Write-Log "mkdir not confirmed. The agent can still create folders via the Write tool, so this is a warning only." 'WARN'
    }
    if ($failed.Count -gt 0) {
        Write-Log "Required capabilities not confirmed: $($failed -join ', ')." 'ERROR'
        if ($failed -contains 'WEBSEARCH' -or $failed -contains 'WEBFETCH') {
            Write-Log "Web is required because the moderator performs Round 00 research. Confirm .claude\settings.json (in this folder) allows WebSearch and WebFetch, that claude launches in this folder, or run with -SkipPermissions." 'ERROR'
        }
        if (-not $ProceedOnCapabilityFail) {
            Write-Log "Stopping before spending a usage window. Re-run with -ProceedOnCapabilityFail to override, or -SkipCapabilityCheck to skip the test." 'ERROR'
            return $false
        }
        Write-Log "Proceeding despite failures because -ProceedOnCapabilityFail was set." 'WARN'
    } else {
        Write-Log 'Capability self-test passed. All required capabilities confirmed.'
    }
    return $true
}

# ---------------------------------------------------------------------------
# One deliberation unit
# ---------------------------------------------------------------------------
function Invoke-ClaudeUnit {
    $promptText = Get-Content -Raw -Encoding UTF8 -Path $PromptFile
    return (Invoke-ClaudeRaw -PromptText $promptText)
}

# ---------------------------------------------------------------------------
# Seed content (used only when bootstrapping or capability-testing)
# ---------------------------------------------------------------------------
$script:CapabilityProbe = @'
You are running an automated capability self-test for an unattended pipeline. Do every step. Do not ask questions. Do not skip any step.

1. Create a directory named .capability-check if it does not already exist, then write a file at .capability-check/probe.txt containing exactly: capability probe ok
2. Read .capability-check/probe.txt back and confirm the contents match.
3. Call the WebSearch tool (actually invoke it, do not answer from memory) with the query: Anthropic Claude. Confirm whether results came back.
4. Call the WebFetch tool (actually invoke it) to fetch https://example.com and confirm whether content came back.

For each capability, PASS means the tool ran and succeeded; FAIL means the tool was unavailable, denied, or errored. MKDIR refers to step 1 creating the directory.

After all steps, output exactly one final line and nothing after it, in this exact format:
CAPABILITY-CHECK: WRITE=PASS READ=PASS MKDIR=PASS WEBSEARCH=PASS WEBFETCH=PASS
Replace each value with PASS or FAIL based on the actual result.
'@

$script:PromptSeed = @'
# LiT Deliberation - Loop Entry (PROMPT.md)

You are the Moderator of the LiT deliberation. `ralph.ps1` feeds you this file once per iteration. Do one unit of work, persist it, then stop. This file is orchestration only. It contains no answers. You generate all content.

## Orient first, every run

1. Read `STATE.md` to find the current round and the next undone unit.
2. Load only what that unit needs: `LiT_Deliberation_Council.md`, `LiT_Deliberation_Moderator_Playbook.md`, and the locked evidence base (`background/`, `research/LiT_Market_Research_2026.md`, and any files already in `research/`).

## What a unit is (this controls run length)

Two kinds of round, two kinds of unit.

Divergent rounds are done as ONE batched unit. In these the perspectives work independently and must not react to one another, so produce ALL participating perspectives' contributions in a single iteration, each written sealed and blind to the others, under its own heading. The divergent rounds are:
- Round 00 reading notes (all participating perspectives' notes and research requests in one pass)
- Round 01 independent SWOT positions (all participating slates plus DISSENT's parallel weakness-and-threat slate in one pass)
- Round 03 strategic option generation (all options in one pass)
- Round 06 pre-mortem (each participating perspective's failure mode in one pass)
Independence is a property of the instruction, not of the iteration boundary: do not let any contribution reference another. They are parallel, not a conversation.

Sequential steps are done ONE per iteration, because they build on prior work: the Round 00 frame lock; the research-register consolidation; each commissioned research item (one or two web items per iteration); Round 02 convergence (one contested cluster or one quadrant per iteration); Round 04 scoring then attacks then the matrix; Round 05 execution architecture (one section per iteration); Round 07 synthesis (one document per iteration). Do not batch these.

## Seat scope (who speaks when)

Core seats speak in every round: CRUCIBLE, SPOT, CLAIM, ROYALTY, MILL, CAPITAL, WATERSHED, DISSENT.

Two seats are phase-scoped:
- CHOKEPOINT (geopolitics / supply-chain) is active in Rounds 01 through 04 only. It files no Round 00 reading note and no Round 05 contribution. Where it is silent, SPOT carries the macro and geo-economic angle and WATERSHED carries the regulatory angle, and you ensure the China-control, government-offtake, and allied-positioning points are still covered in Opportunities, Threats, and Strategy.
- PILOT (execution / scale-up) is active from Round 04 through Round 07 only. It files no Round 00 reading note, no Round 01 SWOT slate, and no Round 03 options. Its execution-feasibility view enters when options are scored in Round 04, it owns the Round 05 execution plan, and it contributes a Round 06 pre-mortem.

## Evidence and integrity rules

- Reason only from the locked evidence base. Tag every claim Cited, Assumption with a confidence band, or Unsupported. Unsupported claims may not enter a deliverable.
- No fabrication. If a fact cannot be retrieved with the tools available, write `NEEDS EXTERNAL RETRIEVAL: <what, where to look>` and continue.
- Preserve dissent. Never record consensus that does not exist.
- Hold frame fidelity until the frame is locked in Round 00.
- Write in direct, definitive prose. Do not use em-dashes.

## Round 00 and the research gate

- Lock the frame, take the batched reading notes, then consolidate the requests into one register.
- You, the Moderator, perform the commissioned research yourself with the WebSearch and WebFetch tools, deduplicated and prioritized, writing each cited result to `research/r00-<topic>.md`.
- Do not begin Round 01 until every accepted request is fulfilled in `research/` or flagged `NEEDS EXTERNAL RETRIEVAL` with DISSENT's agreement to proceed.

## Tooling and file writing

- Use the Write and Edit tools to create and modify files. Do not pipe long content through Bash heredocs; they trip the parser on large blocks and force scratch-file workarounds.
- Write round work to `rounds/`, commissioned research to `research/`, your rulings to `moderator-interventions.md`, and final deliverables to `synthesis/SWOT.md`, `synthesis/STRATEGY.md`, `synthesis/EXECUTION_PLAN.md`, `synthesis/EXECUTIVE_SUMMARY.md`.

## Close every run

1. Update `STATE.md`: mark the unit done, tick any exit-condition items now satisfied, and set the current round and next unit. Keep the first line in the form `ROUND NN: <name> | status: <state>`. Keep the next-unit pointer to ONE sentence; put detail in the round artifact, not the ledger.
2. If, and only if, Round 07 synthesis is complete and all four `synthesis/` files exist, replace the entire first line of `STATE.md` with exactly `DELIBERATION COMPLETE`, then create an empty file named `DONE` in this folder.
3. Stop after one unit, where a unit is one batched divergent round or one sequential step. Do not continue to the next unit in the same run.
'@

$script:StateSeed = @'
ROUND 00: GROUNDING & RESEARCH COMMISSIONING | status: NOT STARTED

<!--
This first line is the live status that ralph.ps1 reads as the current round.
When the deliberation finishes, replace the ENTIRE first line with exactly:
DELIBERATION COMPLETE
and create an empty file named DONE in this folder.
This ledger holds progress, not answers.
-->

## Frame lock

- [ ] Decision owner and lens recorded (company / investor / advisor)

## Round map and exit gates

### Round 00: Grounding & Research Commissioning
- [ ] All ten perspectives confirm a full read of background/ and research/
- [ ] Each perspective's reading note logged
- [ ] Research Request Register consolidated, deduplicated, and prioritized
- [ ] Commissioned research executed and written to research/, or flagged NEEDS EXTERNAL RETRIEVAL
- [ ] Evidence base locked for Round 01

### Round 01: Independent SWOT Positions
- [ ] Every perspective submitted S/W/O/T candidates, each evidence-tagged with confidence
- [ ] DISSENT submitted its parallel weakness-and-threat slate
- [ ] Raw SWOT candidate pool compiled

### Round 02: SWOT Cross-Examination & Convergence
- [ ] Contested items steelmanned and challenged
- [ ] Validation pass assigned support status to each item
- [ ] Pool merged, deduped, and prioritized into a MECE matrix
- [ ] Weaknesses and Threats cross-linked to the risk register
- [ ] synthesis/SWOT.md (v1) written, splits preserved

### Round 03: Strategic Option Generation
- [ ] Options proposed across the full decision space
- [ ] DISSENT contributed at least one non-base-case option, including a do-not-proceed option where supported
- [ ] MECE option set compiled

### Round 04: Option Stress-Test & Trade-off
- [ ] Scoring criteria weighted and recorded
- [ ] Each option attacked at its weakest assumption
- [ ] Scored trade-off matrix with sensitivities produced
- [ ] Recommended direction selected, with dissent log and change-triggers
- [ ] synthesis/STRATEGY.md (v1) written

### Round 05: Execution Architecture
- [ ] Plan phased with decision gates between phases
- [ ] Team build, hires, and capital draw mapped to phases
- [ ] KPIs and proof-of-milestone data defined
- [ ] Every High and Elevated risk vector mapped to an owned mitigation
- [ ] Pilot, IP, and first-licensing dependencies sequenced
- [ ] Execution Plan draft written

### Round 06: Pre-Mortem & Final Validation
- [ ] Pre-mortem run; failure modes fed back as contingencies or earlier gates
- [ ] Full validation pass across all three documents
- [ ] Dissent reconciled and represented in each document
- [ ] Every conclusion carries a confidence band and fragility note

### Round 07: Synthesis & Handoff
- [ ] Three documents assembled in pyramid form
- [ ] synthesis/EXECUTIVE_SUMMARY.md written
- [ ] Traceability check passed; untraceable claims cut
- [ ] Frame statement included
- [ ] Each perspective signed off on its domain sections, dissents included

## Unit ledger

Append one line per completed unit: timestamp, round, unit, output path.

- (none yet)

## Open dissents carried

Record each carried dissent and where it is represented.

- (none yet)
'@

# ===========================================================================
# Preflight
# ===========================================================================
Write-Log "Ralph driver starting in $root"
if (-not (Get-Command claude -ErrorAction SilentlyContinue)) {
    Write-Log "The 'claude' CLI is not on your PATH. Open a shell where Claude Code runs and retry." 'ERROR'
    exit 1
}

Write-Prerequisites

if (-not (Test-Path $StateFile)) {
    Write-Log "State file still not found at $StateFile after bootstrap." 'WARN'
}
if ((Test-Complete) -and -not (Test-Path $DoneSentinel)) {
    $fl = Get-FirstLine
    Write-Log "State file first line already reads complete: '$fl'. If unintended, reset the first line of $StateFile to the starting round and re-run." 'WARN'
}

$state = Load-RunState
$state.consecutiveErrors = 0  # fresh error budget per run; never inherit a prior abort count
Write-Log "Resuming at iteration $($state.iteration). Cumulative wait so far: $([int]$state.cumulativeWaitSec) sec."

if ($SkipPermissions) {
    Write-Log "Running claude with --dangerously-skip-permissions. All tool prompts are bypassed. You are on a real machine, not a container, so rely on git for rollback and keep deny rules in .claude\settings.json." 'WARN'
}

if ($SkipCapabilityCheck) {
    Write-Log 'Capability self-test skipped (-SkipCapabilityCheck).' 'WARN'
} else {
    if (-not (Invoke-CapabilityCheck -State $state)) {
        Save-RunState $state
        exit 2
    }
}

# ===========================================================================
# Main loop
# ===========================================================================
try {
    while ($true) {

        if (Test-Complete) { Write-Log 'Deliberation reports complete. Stopping.' 'DONE'; break }

        if ($StopAfterRound -ge 0) {
            $curRound = Get-CurrentRoundNumber
            if ($curRound -gt $StopAfterRound) {
                Write-Log "Round $curRound has begun, past StopAfterRound=$StopAfterRound. Stopping at the phase gate. Review the outputs, then re-run (raise -StopAfterRound or omit it to continue)." 'DONE'
                break
            }
        }

        if ($MaxIterations -gt 0 -and [int]$state.iteration -ge $MaxIterations) {
            Write-Log "Reached MaxIterations=$MaxIterations without completion. Stopping. Re-run to continue." 'WARN'
            break
        }

        $round = Get-CurrentRoundLabel
        Write-Log "Iteration $([int]$state.iteration + 1) | Round: $round"

        $result = Invoke-ClaudeUnit

        if (Test-RateLimited -Text $result.Text -ExitCode $result.ExitCode) {
            $state.lastEvent = 'rate-limited'
            Save-RunState $state
            Wait-ForWindow -ResetAt (Get-ResetTime -Text $result.Text) -State $state
            continue
        }

        if (Test-Overloaded -Text $result.Text) {
            Write-Log 'Transient overload from the API. Backing off 60 sec, then retrying the same unit.' 'WARN'
            $state.lastEvent = 'overloaded'
            Save-RunState $state
            Start-Sleep -Seconds 60
            continue
        }

        if ($result.ExitCode -ne 0) {
            $state.consecutiveErrors = [int]$state.consecutiveErrors + 1
            $state.lastEvent = "error(exit=$($result.ExitCode))"
            Write-Log "claude exited with code $($result.ExitCode). Consecutive errors: $($state.consecutiveErrors)." 'ERROR'
            Save-RunState $state
            if ([int]$state.consecutiveErrors -ge $MaxConsecutiveErrors) {
                Write-Log "Hit MaxConsecutiveErrors=$MaxConsecutiveErrors. Stopping. State is preserved. Inspect the log, then re-run." 'ERROR'
                break
            }
            Start-Sleep -Seconds ([int][Math]::Min(300, 15 * [int]$state.consecutiveErrors))
            continue
        }

        $state.iteration         = [int]$state.iteration + 1
        $state.consecutiveErrors = 0
        $state.lastEvent         = 'unit-ok'
        $state.lastUnitUtc       = (Get-Date).ToUniversalTime().ToString('o')
        Save-RunState $state

        if (Test-Complete) { Write-Log 'Deliberation reports complete. Stopping.' 'DONE'; break }

        Start-Sleep -Seconds $PollSeconds
    }
}
finally {
    Save-RunState $state
    Write-Log "Driver exiting. Iterations done: $([int]$state.iteration). Run-state checkpoint written to $runStatePath."
}
