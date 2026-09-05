# Kullanim: .\araclar\yeni.ps1 kilisli-ali-usta
# AI Studio'dan kopyaladigin HTML'i panodan alip dogru klasore kaydeder.

param(
    [Parameter(Mandatory = $true)]
    [string]$Slug
)

if ($Slug -notmatch '^[a-z0-9-]+$') {
    Write-Host "Hata: slug sadece kucuk harf, rakam ve tire icerebilir." -ForegroundColor Red
    Write-Host "Ornek: kilisli-ali-usta"
    exit 1
}

$pano = Get-Clipboard -Raw

if ([string]::IsNullOrWhiteSpace($pano)) {
    Write-Host "Hata: pano bos. Once AI Studio'dan HTML kodunu kopyala." -ForegroundColor Red
    exit 1
}

# Markdown kod blogu isaretlerini temizle
$pano = $pano -replace '(?m)^```html\s*$', '' -replace '(?m)^```\s*$', ''

if ($pano -notmatch '(?i)<html') {
    Write-Host "Uyari: panodaki icerikte <html> etiketi bulunamadi." -ForegroundColor Yellow
    $cevap = Read-Host "Yine de kaydedilsin mi? [e/H]"
    if ($cevap -ne 'e' -and $cevap -ne 'E') { exit 1 }
}

New-Item -ItemType Directory -Force -Path "sites\$Slug\foto" | Out-Null

$utf8 = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllText((Join-Path (Get-Location) "sites\$Slug\index.html"), $pano, $utf8)

Write-Host "Kaydedildi: sites\$Slug\index.html" -ForegroundColor Green
Write-Host "Fotograflari sites\$Slug\foto\ klasorune 1.jpg ... 5.jpg olarak koy."
Write-Host ""
Write-Host "Yayinlamak icin:"
Write-Host "  git add . ; git commit -m `"$Slug`" ; git push"
