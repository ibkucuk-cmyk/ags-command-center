<#
    AGS Dashboard Build Script
    Reads MD files and generates a self-contained ags_dashboard.html
    Run: powershell -ExecutionPolicy Bypass -File dashboard\build.ps1
#>

$agsRoot = Split-Path $PSScriptRoot -Parent
if (-not $agsRoot) { $agsRoot = "G:\My Drive\AGS" }

Write-Host "AGS Dashboard Builder" -ForegroundColor Cyan
Write-Host "Root: $agsRoot"

# Files to include (EXCLUDES sensitive financial data)
$files = [ordered]@{
    'todo' = 'AGS_MASTER_TODO.md'
    'strategic' = 'AGS_STRATEGIC_PLAN.md'
    'coldcall' = 'AGS_COLD_CALL_SCRIPTS.md'
    'email' = 'AGS_EMAIL_OUTBOUND.md'
    'linkedin' = 'AGS_LINKEDIN_OUTBOUND.md'
    'whyags' = 'AGS_WHY_AGS_ONEPAGER.md'
    'outreach' = 'AGS_MASTER_OUTREACH.md'
    'competitive' = 'AGS_COMPETITIVE_ANALYSIS.md'
    'phase6' = 'AGS_PHASE6_PROSPECTING.md'
    'playbook' = 'AGS_MAX_B2B_PLAYBOOK.md'
}
# EXCLUDED from public build:
#   STRATEGY_RULES.md     - contains debt, credit, financial constraints
#   AGS_CASH_FLOW_AUDIT.md - contains full financial data

# Helper: escape a string for embedding as a JS string literal
function ConvertTo-JsString($text) {
    $s = $text
    $s = $s.Replace('\', '\\')
    $s = $s.Replace('"', '\"')
    $s = $s.Replace("`r`n", '\n')
    $s = $s.Replace("`n", '\n')
    $s = $s.Replace("`r", '\n')
    $s = $s.Replace("`t", '\t')
    return "`"$s`""
}

# Read all files
$dataLines = @()
$dataLines += "window.mdContent = {};"

foreach ($key in $files.Keys) {
    $path = Join-Path $agsRoot $files[$key]
    if (Test-Path $path) {
        $raw = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)
        $jsStr = ConvertTo-JsString $raw
        $dataLines += "window.mdContent['$key'] = $jsStr;"
        Write-Host "  [OK] $($files[$key])" -ForegroundColor Green
    } else {
        Write-Host "  [SKIP] $($files[$key]) - not found" -ForegroundColor Yellow
    }
}

$dataBlock = $dataLines -join "`n"

# Read the template HTML
$templatePath = Join-Path $PSScriptRoot "dashboard_template.html"
$template = [System.IO.File]::ReadAllText($templatePath, [System.Text.Encoding]::UTF8)

# Find the main app script (after auth script)
$marker = '// Page titles'
$idx = $template.IndexOf($marker)
if ($idx -lt 0) {
    Write-Host "ERROR: Could not find injection point" -ForegroundColor Red
    exit 1
}
$scriptIdx = $template.LastIndexOf('<script>', $idx)
$output = $template.Substring(0, $scriptIdx) + "<script>`n$dataBlock`n</script>`n" + $template.Substring($scriptIdx)

# Write the built file
$outputPath = Join-Path $PSScriptRoot "index.html"
[System.IO.File]::WriteAllText($outputPath, $output, [System.Text.Encoding]::UTF8)

$size = [math]::Round((Get-Item $outputPath).Length / 1MB, 1)
Write-Host ""
Write-Host "Built: $outputPath ($size MB)" -ForegroundColor Cyan
Write-Host "Excluded: STRATEGY_RULES.md, AGS_CASH_FLOW_AUDIT.md (sensitive)" -ForegroundColor Yellow
Write-Host "Open in browser - password protected!" -ForegroundColor Green
