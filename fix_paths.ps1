$content = Get-Content 'index.html' -Raw
$content = $content -replace 'src="/img/', 'src="img/'
$content = $content -replace 'href="/img/', 'href="img/'
$content = $content -replace 'src="/doc/', 'src="doc/'
$content = $content -replace 'href="/doc/', 'href="doc/'
$content = $content -replace 'href="/font-mfizz', 'href="font-mfizz'
Set-Content 'index.html' -Value $content -NoNewline
Write-Host "Fixed image paths in index.html"
