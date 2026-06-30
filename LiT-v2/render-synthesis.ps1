#requires -Version 5.1
<#
.SYNOPSIS
    Render every markdown asset in the synthesis folder into a self-contained,
    Perpensa-branded HTML page with content-derived graphics, using Claude Code.
    Run this after ralph.ps1 finishes.

.DESCRIPTION
    For each *.md in the synthesis folder, this calls `claude -p` with a fixed brand
    and design spec and asks it to write a sibling .html file into the same folder.
    A simple branded index.html cover is generated in PowerShell at the end.

    It shares the loop driver's resilience: UTF-8 throughout, a pinned working
    directory, live streaming of claude output, and usage-window pause and resume.
    Already-rendered files are skipped unless -Force, so a window limit mid-run is
    safe: re-run and it continues.

.PARAMETER SynthesisDir
    Folder holding the deliverable markdown. Default .\synthesis

.PARAMETER Title
    Title for the generated index cover. Default 'Perpensa Deliberation'

.PARAMETER Force
    Re-render pages even if the .html already exists.

.PARAMETER BuildIndex
    Generate a branded index.html cover linking the deliverables. Default $true.

.PARAMETER SkipPermissions
    Append --dangerously-skip-permissions. Prefer a .claude\settings.json allow-list
    that permits Read and Write.

.EXAMPLE
    .\render-synthesis.ps1
.EXAMPLE
    .\render-synthesis.ps1 -Title 'Lithium Technologies - Company Strategy' -Force
.NOTES
    If PowerShell blocks this as unsigned:
        powershell -ExecutionPolicy Bypass -File .\render-synthesis.ps1
#>

[CmdletBinding()]
param(
    [string]   $SynthesisDir         = '.\synthesis',
    [string]   $Title                = 'Perpensa Deliberation',
    [string[]] $ClaudeArgs           = @('-p'),
    [switch]   $Force,
    [bool]     $BuildIndex           = $true,
    [switch]   $SkipPermissions,
    [bool]     $ShowProgress         = $true,
    [int]      $RetryWindowMinutes   = 20,
    [int]      $ResetBufferSeconds   = 90,
    [double]   $MaxWaitHours         = 0,
    [int]      $MaxConsecutiveErrors = 3,
    [string]   $LogDir               = '.\logs'
)

$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

# --- Encoding -------------------------------------------------------------
try {
    [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
    $OutputEncoding           = [System.Text.Encoding]::UTF8
    [Console]::InputEncoding  = [System.Text.Encoding]::UTF8
} catch { }
$script:Utf8NoBom = New-Object System.Text.UTF8Encoding($false)
function Add-Utf8   { param([string]$Path,[string]$Text) [System.IO.File]::AppendAllText($Path, $Text, $script:Utf8NoBom) }
function Write-Utf8 { param([string]$Path,[string]$Text) [System.IO.File]::WriteAllText($Path, $Text, $script:Utf8NoBom) }

# --- Paths and logging ----------------------------------------------------
$root = (Get-Location).Path
[Environment]::CurrentDirectory = $root
$synthFull = if ([System.IO.Path]::IsPathRooted($SynthesisDir)) { $SynthesisDir } else { Join-Path $root $SynthesisDir }
$logDirFull = if ([System.IO.Path]::IsPathRooted($LogDir)) { $LogDir } else { Join-Path $root $LogDir }
if (-not (Test-Path $logDirFull)) { New-Item -ItemType Directory -Path $logDirFull | Out-Null }
$stamp     = Get-Date -Format 'yyyyMMdd-HHmmss'
$logFile   = Join-Path $logDirFull "render-$stamp.log"
$latestLog = Join-Path $logDirFull 'render-latest.log'

function Write-Log {
    param([string]$Message, [string]$Level = 'INFO')
    $line = "{0} [{1}] {2}" -f (Get-Date -Format 's'), $Level, $Message
    Write-Host $line
    Add-Utf8 -Path $logFile   -Text ($line + [Environment]::NewLine)
    Add-Utf8 -Path $latestLog -Text ($line + [Environment]::NewLine)
}

# --- Usage-window detection (same logic as the loop driver) ---------------
$RateLimitPatterns = @(
    'session limit','usage limit',"hit your[^\r\n]{0,20}limit",'limit reached',
    'limit will reset','5-?hour limit','weekly limit','rate_limit_error',
    '\bresets?\b[^\r\n]{0,15}\d{1,2}(:\d{2})?\s*(am|pm)','limit reached\|\d{10,13}'
)
$OverloadPatterns = @('Overloaded','"type"\s*:\s*"overloaded_error"','\b529\b','API Error: 429')
function Test-RateLimited {
    param([string]$Text,[int]$ExitCode)
    foreach ($p in $RateLimitPatterns) { if ($Text -match "(?i)$p") { return $true } }
    if ($ExitCode -ne 0 -and $Text -match '(?i)\blimit\b' -and $Text -match '(?i)\breset') { return $true }
    return $false
}
function Test-Overloaded { param([string]$Text) foreach ($p in $OverloadPatterns) { if ($Text -match "(?i)$p") { return $true } } return $false }
function Get-ResetTime {
    param([string]$Text)
    if ($Text -match 'limit[^|]*\|\s*(\d{10,13})') {
        $num = [int64]$Matches[1]
        try { if ("$num".Length -ge 13) { return [DateTimeOffset]::FromUnixTimeMilliseconds($num).LocalDateTime } else { return [DateTimeOffset]::FromUnixTimeSeconds($num).LocalDateTime } } catch { }
    }
    if ($Text -match '(\d{4}-\d{2}-\d{2}[T ]\d{2}:\d{2}(:\d{2})?)') { try { return [datetime]::Parse($Matches[1]) } catch { } }
    if ($Text -match '(?i)reset[s]?\s*(at)?\s*([0-9]{1,2}(:[0-9]{2})?\s*(am|pm)?)') {
        $tod = $Matches[2].Trim()
        try { $t = [datetime]::Parse($tod); $target = (Get-Date).Date.AddHours($t.Hour).AddMinutes($t.Minute); if ($target -le (Get-Date)) { $target = $target.AddDays(1) }; return $target } catch { }
    }
    return $null
}
function Wait-ForWindow {
    param([Nullable[datetime]]$ResetAt)
    if ($ResetAt) { $target = $ResetAt.AddSeconds($ResetBufferSeconds); Write-Log "Usage window limit. Reset parsed for $($ResetAt.ToString('s')). Waiting until $($target.ToString('s'))." 'LIMIT' }
    else { $target = (Get-Date).AddMinutes($RetryWindowMinutes); Write-Log "Usage window limit. No reset time parsed. Backing off $RetryWindowMinutes min." 'LIMIT' }
    if ($MaxWaitHours -gt 0) { $cap = (Get-Date).AddHours($MaxWaitHours); if ($target -gt $cap) { $target = $cap; Write-Log "Wait capped at MaxWaitHours=$MaxWaitHours." 'WARN' } }
    $hb = Get-Date
    while ((Get-Date) -lt $target) {
        Start-Sleep -Seconds ([int][Math]::Min(30,[Math]::Max(1,($target-(Get-Date)).TotalSeconds)))
        if (((Get-Date)-$hb).TotalMinutes -ge 5) { Write-Log "Still waiting. About $([int](($target-(Get-Date)).TotalMinutes)) min remaining." 'LIMIT'; $hb = Get-Date }
    }
    Write-Log 'Window should be open. Resuming.' 'LIMIT'
}

# --- Low-level claude call: streams live, captures, returns object --------
function Invoke-ClaudeRaw {
    param([string]$PromptText)
    $callArgs = @($ClaudeArgs)
    if ($ShowProgress)    { $callArgs += '--verbose' }
    if ($SkipPermissions) { $callArgs += '--dangerously-skip-permissions' }
    $out = $null
    $PromptText | & claude @callArgs 2>&1 | Tee-Object -Variable out | Out-Host
    $code = $LASTEXITCODE
    $text = ($out | Out-String)
    Add-Utf8 -Path $logFile   -Text ($text + [Environment]::NewLine)
    Add-Utf8 -Path $latestLog -Text ($text + [Environment]::NewLine)
    return [pscustomobject]@{ Text = $text; ExitCode = $code }
}
# Window-aware: waits through a limit, backs off overload, returns the result.
function Invoke-ClaudeWindowAware {
    param([string]$PromptText)
    while ($true) {
        $r = Invoke-ClaudeRaw -PromptText $PromptText
        if (Test-RateLimited -Text $r.Text -ExitCode $r.ExitCode) { Wait-ForWindow -ResetAt (Get-ResetTime -Text $r.Text); continue }
        if (Test-Overloaded   -Text $r.Text) { Write-Log 'Transient overload. Backing off 60 sec.' 'WARN'; Start-Sleep 60; continue }
        return $r
    }
}

# --- Friendly labels, order, descriptions ---------------------------------
function Get-DocMeta {
    param([string]$BaseName)
    switch -Regex ($BaseName.ToUpper()) {
        '^EXECUTIVE_SUMMARY$' { return @{ Rank=0; Label='Executive Summary'; Kind='Summary';    Desc='The headline recommendation and the few things that matter most.' } }
        '^SWOT$'              { return @{ Rank=1; Label='SWOT';              Kind='Assessment'; Desc='Strengths, weaknesses, opportunities, and threats, prioritized.' } }
        '^STRATEGY$'          { return @{ Rank=2; Label='Strategy';          Kind='Strategy';   Desc='The recommended direction, the options weighed, and what would change the call.' } }
        '^EXECUTION_PLAN$'    { return @{ Rank=3; Label='Execution Plan';    Kind='Plan';       Desc='The phased build, milestones, capital, and risk mitigations.' } }
        default {
            $lbl = (Get-Culture).TextInfo.ToTitleCase(($BaseName -replace '_',' ').ToLower())
            return @{ Rank=50; Label=$lbl; Kind='Document'; Desc='Deliverable.' }
        }
    }
}

# --- Brand and design spec injected into every page request ---------------
$DefaultBrandSpec = @'
PERPENSA BRAND AND DESIGN SPEC

Voice of the design: a top-tier strategy memo, restrained and editorial. Theme name: Counsel. No marketing gloss, no emoji, no clip-art, no decorative gradients.

Wordmark: "Perpensa" set in the heading serif with letter-spacing 0.02em, paired with a small accent glyph (a filled diamond or a tight five-point dot cluster) in the accent color. Do not invent or embed a logo image; use a clean typographic wordmark.

Color tokens, use exactly:
- Ink (primary text, headers):      #1A2238
- Accent (brass; rules, emphasis):  #B68A4E
- Surface (page background):        #FAF9F6
- Panel (cards, callouts):          #FFFFFF
- Hairline (borders, dividers):     #E7E2D6
- Muted text:                       #6B7280
- Positive / strength:              #3F7D5B
- Caution / watch:                  #C9922B
- Risk / threat:                    #B23A48

Typography:
- Headings: a refined serif. Load 'Source Serif 4' from Google Fonts, fallback Georgia, 'Times New Roman', serif.
- Body and UI: a clean sans. Load 'Inter' from Google Fonts, fallback system-ui, 'Segoe UI', Roboto, sans-serif.
- Include the Google Fonts link, but the page must look correct if fonts fail to load.
- Body 16 to 18px, line-height ~1.6, prose column max-width ~820px.

Layout:
- A slim top header band: Perpensa wordmark on the left, a horizontal nav linking the sibling deliverables on the right, with the current page marked active.
- A title block: an accent small-caps eyebrow naming the document type, an H1 title, and a one-line standing or confidence note if the source carries one.
- Centered content column. Use the accent color sparingly: a thin rule under H2s and for genuine emphasis only.
- A footer with the Perpensa wordmark, a confidentiality line, and the date.
- Responsive to mobile. Print-friendly: a print stylesheet that hides the nav, keeps content, and avoids breaking cards across pages so it exports cleanly to PDF.

Graphics, derive ONLY from the document's actual content and never invent numbers:
- Render visuals as inline SVG so the page stays self-contained.
- SWOT: a 2x2 quadrant grid, each quadrant tinted (strength positive, weakness and threat risk, opportunity accent), items as concise chips.
- Risk register: a compact heatmap or colored severity chips (Low, Moderate, Elevated, High) using the caution and risk tokens.
- Strategy: style the options trade-off as a clean scored matrix; where the source gives scores, draw simple inline-SVG bars to compare options.
- Execution Plan: a phased roadmap as an inline-SVG horizontal timeline with gates, plus KPI cards and a risk-to-mitigation table.
- Executive Summary: a few headline callout cards and a simple confidence indicator.
- Keep visuals tasteful and editorial.

Output:
- One self-contained .html file: inline <style> and inline SVG. The only external references allowed are the Google Fonts link, and at most one pinned CDN script if a chart genuinely needs it; prefer inline SVG.
- Valid, accessible HTML5, semantic headings, strong color contrast. No build step, no localStorage, no framework required.
'@

function Build-RenderPrompt {
    param([string]$MdPath,[string]$HtmlPath,[string]$ActiveFile,[string]$NavSpec)
@"
You are producing a client-grade HTML rendering of a Perpensa deliverable for the decision owner.

Read the markdown at: $MdPath
Render it as a single, self-contained, professionally designed HTML page and write it with the Write tool to: $HtmlPath
Do not modify the source markdown.

Preserve all substantive content faithfully. Improve presentation, structure, and visuals only. Do not add, remove, or alter facts, numbers, or findings. Add no commentary about this rendering, the process, or yourself anywhere in the page. The page must read as a finished consulting document.

Header navigation: include these sibling deliverables in the header nav, linking by relative filename, and mark "$ActiveFile" as the active page:
$NavSpec

$DefaultBrandSpec

When finished, $HtmlPath must exist and be a complete, valid HTML document.
"@
}

# --- Branded index cover, built deterministically in PowerShell -----------
function Build-IndexHtml {
    param([object[]]$Items,[string]$IndexPath,[string]$PageTitle)
    $cards = ''
    foreach ($it in $Items) {
        $cards += "      <a class=""card"" href=""$($it.Html)""><span class=""eyebrow"">$($it.Kind)</span><h2>$($it.Label)</h2><p>$($it.Desc)</p><span class=""go"">Open &rarr;</span></a>`n"
    }
    $date = Get-Date -Format 'MMMM d, yyyy'
    $html = @"
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>$PageTitle</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Source+Serif+4:wght@500;600;700&display=swap" rel="stylesheet">
<style>
  :root{
    --ink:#1A2238; --accent:#B68A4E; --surface:#FAF9F6; --panel:#FFFFFF;
    --hairline:#E7E2D6; --muted:#6B7280;
    --serif:"Source Serif 4",Georgia,"Times New Roman",serif;
    --sans:"Inter",system-ui,"Segoe UI",Roboto,sans-serif;
  }
  *{box-sizing:border-box}
  body{margin:0;background:var(--surface);color:var(--ink);font-family:var(--sans);line-height:1.6;}
  header{display:flex;align-items:center;justify-content:space-between;padding:20px 32px;border-bottom:1px solid var(--hairline);}
  .mark{font-family:var(--serif);font-weight:700;letter-spacing:.02em;font-size:20px;color:var(--ink);}
  .mark .glyph{color:var(--accent);margin-right:.5ch;}
  .mark .tag{font-family:var(--sans);font-weight:500;color:var(--muted);font-size:12px;letter-spacing:.08em;text-transform:uppercase;margin-left:1ch;}
  main{max-width:980px;margin:0 auto;padding:56px 32px 24px;}
  .eyebrow{font-size:12px;letter-spacing:.12em;text-transform:uppercase;color:var(--accent);font-weight:600;}
  h1{font-family:var(--serif);font-size:40px;line-height:1.15;margin:.2em 0 .3em;font-weight:700;}
  .lede{color:var(--muted);font-size:18px;max-width:680px;margin:0 0 8px;}
  .grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(260px,1fr));gap:18px;margin-top:36px;}
  .card{display:flex;flex-direction:column;gap:6px;background:var(--panel);border:1px solid var(--hairline);border-radius:10px;padding:22px;text-decoration:none;color:var(--ink);transition:border-color .15s,transform .15s,box-shadow .15s;}
  .card:hover{border-color:var(--accent);transform:translateY(-2px);box-shadow:0 8px 24px rgba(26,34,56,.07);}
  .card h2{font-family:var(--serif);font-size:22px;margin:.1em 0;font-weight:600;}
  .card p{color:var(--muted);font-size:14px;margin:0;flex:1;}
  .card .go{margin-top:10px;color:var(--accent);font-weight:600;font-size:14px;}
  footer{max-width:980px;margin:0 auto;padding:28px 32px 48px;border-top:1px solid var(--hairline);color:var(--muted);font-size:13px;display:flex;justify-content:space-between;flex-wrap:wrap;gap:8px;}
</style>
</head>
<body>
  <header>
    <div class="mark"><span class="glyph">&#9670;</span>Perpensa<span class="tag">Structured deliberation</span></div>
  </header>
  <main>
    <p class="eyebrow">Briefing</p>
    <h1>$PageTitle</h1>
    <p class="lede">The deliberation deliverables, prepared for the decision owner. Open any document below.</p>
    <div class="grid">
$cards
    </div>
  </main>
  <footer>
    <span>Perpensa &#9670; Structured deliberation</span>
    <span>Confidential &middot; $date</span>
  </footer>
</body>
</html>
"@
    Write-Utf8 -Path $IndexPath -Text $html
}

# ===========================================================================
# Preflight
# ===========================================================================
Write-Log "Render starting in $root"
if (-not (Get-Command claude -ErrorAction SilentlyContinue)) { Write-Log "The 'claude' CLI is not on your PATH." 'ERROR'; exit 1 }
if (-not (Test-Path $synthFull)) { Write-Log "Synthesis folder not found at $synthFull. Run the deliberation first." 'ERROR'; exit 1 }

$mdFiles = @(Get-ChildItem -Path $synthFull -Filter *.md -File)
if ($mdFiles.Count -eq 0) { Write-Log "No markdown assets found in $synthFull." 'ERROR'; exit 1 }

# Build the ordered item list and the shared nav spec.
$items = foreach ($md in $mdFiles) {
    $meta = Get-DocMeta -BaseName $md.BaseName
    [pscustomobject]@{ Md=$md.FullName; MdName=$md.Name; Base=$md.BaseName; Html=($md.BaseName + '.html'); HtmlPath=(Join-Path $synthFull ($md.BaseName + '.html')); Rank=$meta.Rank; Label=$meta.Label; Kind=$meta.Kind; Desc=$meta.Desc }
}
$items = @($items | Sort-Object Rank, Label)

$navLines = @('  Overview -> index.html')
foreach ($it in $items) { $navLines += ("  {0} -> {1}" -f $it.Label, $it.Html) }
$navSpec = ($navLines -join [Environment]::NewLine)

if ($SkipPermissions) { Write-Log "Running claude with --dangerously-skip-permissions." 'WARN' }
Write-Log "Found $($items.Count) deliverable(s) to render."

# ===========================================================================
# Render loop
# ===========================================================================
$errors = 0
$rendered = @()
foreach ($it in $items) {
    if ((Test-Path $it.HtmlPath) -and -not $Force) { Write-Log "Skip (exists): $($it.Html). Use -Force to re-render."; $rendered += $it.HtmlPath; continue }

    Write-Log "Rendering $($it.MdName) -> $($it.Html)"
    $prompt = Build-RenderPrompt -MdPath $it.Md -HtmlPath $it.HtmlPath -ActiveFile $it.Html -NavSpec $navSpec
    $r = Invoke-ClaudeWindowAware -PromptText $prompt

    if (Test-Path $it.HtmlPath) {
        Write-Log "Rendered: $($it.Html)"
        $rendered += $it.HtmlPath
        $errors = 0
    } else {
        $errors++
        Write-Log "Expected output not found: $($it.Html) (exit $($r.ExitCode)). Consecutive failures: $errors." 'ERROR'
        if ($errors -ge $MaxConsecutiveErrors) { Write-Log "Hit MaxConsecutiveErrors=$MaxConsecutiveErrors. Stopping. Re-run to continue (done files are skipped)." 'ERROR'; break }
    }
}

# ===========================================================================
# Branded index cover
# ===========================================================================
if ($BuildIndex) {
    try {
        $indexPath = Join-Path $synthFull 'index.html'
        Build-IndexHtml -Items $items -IndexPath $indexPath -PageTitle $Title
        Write-Log "Wrote index cover: index.html"
        $rendered += $indexPath
    } catch {
        Write-Log "Index build failed: $($_.Exception.Message)" 'WARN'
    }
}

Write-Log "Done. Rendered $($rendered.Count) file(s) into $synthFull."
