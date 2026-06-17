# ralph.ps1
# Perpensa FedRAMP Deliberation - Ralph loop driver (PowerShell)
# Runs one round of the staged deliberation per iteration until complete.
#
# Usage:  .\ralph.ps1                    (default 20 iterations)
#         .\ralph.ps1 -MaxIterations 30
#         .\ralph.ps1 -DryRun            (show what would run, don't call claude)
#
# Completion: the loop stops when the FIRST LINE of state/STATUS.md is
# "DELIBERATION COMPLETE". The check reads only line 1.
#
# Note: this version pipes PROMPT.md into a normal `claude` session rather than
# using headless `-p` mode. Headless mode drops the connection on large
# multi-file requests ("Connection closed mid-response"); piping into a session
# streams and handles a full round reliably. Each iteration also retries once
# on a transient connection drop before giving up.

param(
    [int]$MaxIterations = 20,
    [switch]$DryRun
)

$ErrorActionPreference = "Stop"
$statusFile = "state/STATUS.md"

# --- Sanity checks -----------------------------------------------------------
if (-not (Test-Path "PROMPT.md")) {
    Write-Error "PROMPT.md not found. Run this from the fedramp-deliberation folder."
    exit 1
}
if (-not (Test-Path $statusFile)) {
    Write-Error "state/STATUS.md not found. The state machine seed is missing."
    exit 1
}
if (-not $DryRun -and -not (Get-Command claude -ErrorAction SilentlyContinue)) {
    Write-Error "'claude' command not found on PATH. Check your Claude Code install, or use -DryRun to test the loop."
    exit 1
}

# --- Helpers -----------------------------------------------------------------
function Test-Complete {
    $firstLine = Get-Content -Path $statusFile -TotalCount 1
    return ($firstLine -match "DELIBERATION COMPLETE")
}

# Run one Claude session seeded with PROMPT.md. Returns $true on success.
# Pipes the prompt into a normal session (no -p) so large multi-file rounds
# stream instead of dropping the connection.
function Invoke-ClaudeRound {
    $prompt = Get-Content -Path "PROMPT.md" -Raw
    $prompt | claude --allowedTools "Read,Write,Edit" --dangerously-skip-permissions
    return ($LASTEXITCODE -eq 0)
}

# --- Loop --------------------------------------------------------------------
$completed = $false

for ($i = 0; $i -lt $MaxIterations; $i++) {
    Write-Host "=== Iteration $($i + 1) of $MaxIterations ===" -ForegroundColor Cyan

    # Stop if the deliberation signaled completion (first line only)
    if (Test-Complete) {
        Write-Host "Deliberation complete. Handoff package ready: deliberation-handoff.md" -ForegroundColor Green
        $completed = $true
        break
    }

    # Show which round we're on (best-effort)
    $roundLine = (Select-String -Path $statusFile -Pattern "CURRENT ROUND:" | Select-Object -First 1).Line
    if ($roundLine) { Write-Host "  $($roundLine.Trim())" -ForegroundColor DarkGray }

    if ($DryRun) {
        $prompt = Get-Content -Path "PROMPT.md" -Raw
        Write-Host "  [DryRun] Would pipe PROMPT.md into: claude --allowedTools Read,Write,Edit --dangerously-skip-permissions" -ForegroundColor Yellow
        Write-Host "  [DryRun] Prompt length: $($prompt.Length) chars" -ForegroundColor Yellow
        Write-Host "  [DryRun] No state change will occur; breaking after one pass." -ForegroundColor Yellow
        break
    }

    # One iteration, with one retry on a transient connection drop
    $ok = Invoke-ClaudeRound
    if (-not $ok) {
        Write-Warning "Claude call failed on iteration $($i + 1) (exit $LASTEXITCODE). Retrying once in 5s..."
        Start-Sleep -Seconds 5
        $ok = Invoke-ClaudeRound
    }

    if (-not $ok) {
        Write-Warning "Claude failed twice on iteration $($i + 1). Stopping so you can inspect state/STATUS.md."
        Write-Warning "State is preserved; rerun .\ralph.ps1 to resume from the current round."
        break
    }

    Start-Sleep -Seconds 2
}

# --- Wrap-up -----------------------------------------------------------------
if (-not $completed -and -not $DryRun) {
    if (Test-Complete) {
        Write-Host "Deliberation complete on the final iteration. Handoff package ready." -ForegroundColor Green
    }
    elseif ($i -ge $MaxIterations) {
        Write-Warning "Hit max iterations ($MaxIterations) without completion. Inspect state/STATUS.md to see which round stalled."
    }
}
