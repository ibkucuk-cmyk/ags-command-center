<#
    AGS Dashboard Build Script
    Reads all MD files and generates a self-contained ags_dashboard.html
    Run: powershell -ExecutionPolicy Bypass -File dashboard\build.ps1
#>

$agsRoot = Split-Path $PSScriptRoot -Parent
if (-not $agsRoot) { $agsRoot = "G:\My Drive\AGS" }

Write-Host "AGS Dashboard Builder" -ForegroundColor Cyan
Write-Host "Root: $agsRoot"

# File mapping - all files included (protected by password gate)
$files = [ordered]@{
    'todo' = 'AGS_MASTER_TODO.md'
    'strategic' = 'AGS_STRATEGIC_PLAN.md'
    'rules' = 'STRATEGY_RULES.md'
    'coldcall' = 'AGS_COLD_CALL_SCRIPTS.md'
    'email' = 'AGS_EMAIL_OUTBOUND.md'
    'linkedin' = 'AGS_LINKEDIN_OUTBOUND.md'
    'whyags' = 'AGS_WHY_AGS_ONEPAGER.md'
    'outreach' = 'AGS_MASTER_OUTREACH.md'
    'competitive' = 'AGS_COMPETITIVE_ANALYSIS.md'
    'cashflow' = 'AGS_CASH_FLOW_AUDIT.md'
    'playbook' = 'AGS_MAX_B2B_PLAYBOOK.md'
}

# Read all files and build JSON-safe data
$dataLines = @()
$dataLines += "window.mdContent = {};"

foreach ($key in $files.Keys) {
    $path = Join-Path $agsRoot $files[$key]
    if (Test-Path $path) {
        $raw = Get-Content $path -Raw -Encoding UTF8
        $jsonStr = $raw | ConvertTo-Json -Compress
        $dataLines += "window.mdContent['$key'] = JSON.parse($jsonStr);"
        Write-Host "  [OK] $($files[$key])" -ForegroundColor Green
    } else {
        Write-Host "  [SKIP] $($files[$key]) - not found" -ForegroundColor Yellow
    }
}

$dataBlock = $dataLines -join "`n"

# Read the template HTML
$templatePath = Join-Path $PSScriptRoot "index.html"
$template = Get-Content $templatePath -Raw -Encoding UTF8

# Find the main app script (after auth script) by looking for "Page titles"
$marker = '// Page titles'
$idx = $template.IndexOf($marker)
if ($idx -lt 0) {
    Write-Host "ERROR: Could not find injection point" -ForegroundColor Red
    exit 1
}
# Find the <script> tag just before it
$scriptIdx = $template.LastIndexOf('<script>', $idx)
$output = $template.Substring(0, $scriptIdx) + "<script>`n$dataBlock`n</script>`n" + $template.Substring($scriptIdx)

# Write the built file
$outputPath = Join-Path $PSScriptRoot "ags_dashboard.html"
[System.IO.File]::WriteAllText($outputPath, $output, [System.Text.Encoding]::UTF8)

$size = (Get-Item $outputPath).Length / 1MB
Write-Host ""
Write-Host "Built: $outputPath ($([math]::Round($size, 1)) MB)" -ForegroundColor Cyan
Write-Host "Open in browser - password protected!" -ForegroundColor Green
