$env:Path += ";C:\Program Files\Git\cmd"
Set-Location "G:\My Drive\AGS"
git add -A
git commit -m "Fix: embedded content now loads in all tabs + remove sensitive files from public build"
git push origin main
Write-Host ""
Write-Host "DONE! Hard-refresh your browser (Ctrl+Shift+R)" -ForegroundColor Green
