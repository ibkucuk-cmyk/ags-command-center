<#
    AGS Dashboard Build Script
    Reads all MD files and generates a self-contained index.html
    Run: powershell -ExecutionPolicy Bypass -File dashboard\build.ps1
#>

$agsRoot = Split-Path $PSScriptRoot -Parent
if (-not $agsRoot) { $agsRoot = "G:\My Drive\AGS" }

Write-Host "AGS Dashboard Builder" -ForegroundColor Cyan
Write-Host "Root: $agsRoot"

# File mapping
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
$dataLines += "const mdContent = {};"

foreach ($key in $files.Keys) {
    $path = Join-Path $agsRoot $files[$key]
    if (Test-Path $path) {
        $raw = Get-Content $path -Raw -Encoding UTF8
        # JSON-encode the string to handle all special characters
        $jsonStr = $raw | ConvertTo-Json -Compress
        $dataLines += "mdContent['$key'] = JSON.parse($jsonStr);"
        Write-Host "  [OK] $($files[$key])" -ForegroundColor Green
    } else {
        Write-Host "  [SKIP] $($files[$key]) - not found" -ForegroundColor Yellow
    }
}

$dataBlock = $dataLines -join "`n"

# Read the template HTML
$templatePath = Join-Path $PSScriptRoot "index.html"
$template = Get-Content $templatePath -Raw -Encoding UTF8

# Build the override script - use single-quoted here-string to prevent PS interpolation
$overrideJS = @'
    <script>
    %%DATABLOCK%%

    // Override loadMarkdown to use embedded content
    async function loadMarkdown(pid) {
        var el = document.getElementById('page-' + pid);
        if (mdContent[pid]) {
            var h = marked.parse(mdContent[pid]);
            el.innerHTML = '<div class="md-content">' + h + '</div>';
            loadedPages[pid] = true;
        } else {
            el.innerHTML = '<div class="md-content"><h2>Content not available</h2></div>';
        }
    }
    </script>
</body>
'@

$overrideJS = $overrideJS -replace '%%DATABLOCK%%', $dataBlock

# Replace the closing body tag with embedded data
$output = $template -replace '</body>', $overrideJS

# Write the built file
$outputPath = Join-Path $PSScriptRoot "ags_dashboard.html"
[System.IO.File]::WriteAllText($outputPath, $output, [System.Text.Encoding]::UTF8)

$size = (Get-Item $outputPath).Length / 1MB
Write-Host ""
Write-Host "Built: $outputPath ($([math]::Round($size, 1)) MB)" -ForegroundColor Cyan
Write-Host "Open this file in your browser - no server needed!" -ForegroundColor Green
