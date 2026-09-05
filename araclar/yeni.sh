#!/usr/bin/env bash
# Kullanim: ./araclar/yeni.sh kilisli-ali-usta
# AI Studio'dan kopyaladigin HTML'i panodan alip dogru klasore kaydeder.

set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Kullanim: ./araclar/yeni.sh <slug>"
  echo "Ornek:    ./araclar/yeni.sh kilisli-ali-usta"
  exit 1
fi

SLUG="$1"

# Slug kontrolu: sadece kucuk harf, rakam ve tire
if ! [[ "$SLUG" =~ ^[a-z0-9-]+$ ]]; then
  echo "Hata: slug sadece kucuk harf, rakam ve tire icerebilir."
  echo "Ornek: kilisli-ali-usta"
  exit 1
fi

# Panodan oku
if command -v pbpaste >/dev/null 2>&1; then
  PANO="$(pbpaste)"
elif command -v wl-paste >/dev/null 2>&1; then
  PANO="$(wl-paste)"
elif command -v xclip >/dev/null 2>&1; then
  PANO="$(xclip -selection clipboard -o)"
else
  echo "Hata: pano okunamadi. Linux'ta 'xclip' veya 'wl-clipboard' kur."
  exit 1
fi

if [ -z "${PANO// }" ]; then
  echo "Hata: pano bos. Once AI Studio'dan HTML kodunu kopyala."
  exit 1
fi

# Markdown kod bloğu isaretlerini temizle
PANO="$(printf '%s' "$PANO" | sed -e 's/^```html$//' -e 's/^```$//')"

if ! printf '%s' "$PANO" | grep -qi "<html"; then
  echo "Uyari: panodaki icerikte <html> etiketi bulunamadi."
  read -r -p "Yine de kaydedilsin mi? [e/H] " CEVAP
  [[ "$CEVAP" =~ ^[eE]$ ]] || exit 1
fi

mkdir -p "sites/$SLUG/foto"
printf '%s\n' "$PANO" > "sites/$SLUG/index.html"

echo "Kaydedildi: sites/$SLUG/index.html"
echo "Fotograflari sites/$SLUG/foto/ klasorune 1.jpg ... 5.jpg olarak koy."
echo
echo "Yayinlamak icin:"
echo "  git add . && git commit -m \"$SLUG\" && git push"
