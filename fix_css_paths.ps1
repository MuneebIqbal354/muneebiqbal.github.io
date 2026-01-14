$content = Get-Content 'css\combined.css' -Raw
$content = $content -replace 'url\("/img/', 'url("../img/'
Set-Content 'css\combined.css' -Value $content -NoNewline
Write-Host "Fixed background image paths in combined.css"
