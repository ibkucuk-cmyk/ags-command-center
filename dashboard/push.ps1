$env:Path += ";C:\Program Files\Git\cmd"
Set-Location "G:\My Drive\AGS"
git add -A
git commit -m "Fix mobile bottom cutoff"
git push origin main
Write-Host "DONE!" -ForegroundColor Green
