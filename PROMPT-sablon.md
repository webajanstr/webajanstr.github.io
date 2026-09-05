# AI Studio promptu — boş şablon

Köşeli parantezli alanları doldur, kalanını olduğu gibi bırak, AI Studio'ya yapıştır.

---

Sen deneyimli bir web tasarımcısısın. [ŞEHİR/İLÇE]'de bir [İŞ KOLU] için tek sayfalık tanıtım sitesi tasarlayacaksın. İşletmenin şu an hiç web sitesi yok, bu site onun ilk dijital vitrini olacak.

## ÇIKTI KURALLARI — bunlara kesinlikle uy

1. **Tek bir `index.html` dosyası** üret. Başka hiçbir dosya oluşturma.
2. React, Vue, Vite, npm, TypeScript, build adımı **kullanma**. Saf HTML + CSS + JavaScript.
3. CSS'i `<style>` içine, JS'i `<script>` içine göm. Harici yerel dosya bağlama.
4. **Tüm yollar göreli olsun**, `./` ile başlasın. Başında `/` olan mutlak yol asla kullanma — site bir alt klasörde yayınlanacak.
5. Harici kaynak olarak sadece Google Fonts ve Google Maps embed iframe'e izin var.
6. Mobil öncelikli tasarla.
7. Tüm metinler Türkçe.
8. Kodu tek parça halinde, açıklama yapmadan ver.

## GÖRSELLER

Fotoğraflar `./foto/1.jpg` … `./foto/5.jpg` yollarından gelecek. Dosyalar henüz yok; her `<img>` etiketine `onerror` ekle ki dosya bulunamazsa yerine bir CSS renk bloğu görünsün ve site kırılmasın.

## TASARIM YÖNÜ

[İŞ KOLUNUN görsel dünyasını buraya yaz. Örnekler:
 kuaför → keskin çizgiler, mermer, pirinç, siyah-beyaz + tek sıcak vurgu
 oto servis → endüstriyel, koyu gri, sarı uyarı rengi, teknik tipografi
 pastane → açık pastel değil; kavrulmuş şeker, kakao kahvesi, krem, ince serif
 diş kliniği → serin mavi-yeşil, bol beyaz alan, yuvarlak hatlar, sakin
 çiçekçi → toprak yeşili, kurutulmuş gül, kağıt dokusu hissi]

**Renk paleti** (5 hex değeri belirle ve yaz):
- Koyu zemin `#______`
- Açık zemin `#______`
- Ana vurgu `#______`
- İkincil vurgu `#______`
- Gövde metni `#______`

**Tipografi:**
- Başlıklar: [Google Fonts başlık yazı tipi], 600–700
- Gövde: [Google Fonts gövde yazı tipi], 400–500
- Türkçe karakterler için `latin-ext` alt kümesini de yükle

**Düzen ilkeleri:**
- Koyu ve açık bölümler dönüşümlü olsun.
- Metinler sola hizalı, ortalanmış blok metinden kaçın.
- Cesaretini tek bir yere harca: hero. Geri kalanı sakin tutsun.
- Aynı köşe yuvarlaklığında sıralanmış kartlarla doldurma.
- Kaydırma animasyonu ekleme. Sadece buton hover/focus geçişi olsun.
- Klavye ile gezilebilir olsun, odak halkaları görünsün.

## İŞLETME BİLGİLERİ

- **Ad:** [İŞLETME ADI]
- **Ne yapar:** [TEK CÜMLE]
- **Adres:** [AÇIK ADRES]
- **Telefon:** [TELEFON]
- **Çalışma saatleri:** [SAATLER]
- **Google puanı:** [X,X] / 5 — [N] değerlendirme
- **Varsa diğer platformlar:** [Yandex / Yemeksepeti / Trendyol vb.]

**Öne çıkan hizmetler/ürünler:** [LİSTE]

**Müşterilerin en çok övdüğü yanlar:** [3-5 madde, yorumlardan çıkardığın temalar]

## SAYFA BÖLÜMLERİ

**1. Hero (koyu)** — ekran yüksekliğinin ~%75'i. Arka planda `./foto/1.jpg` üzerine koyu katman.
İşletme adı, tek cümlelik tanım, konum + çalışma saati satırı, iki buton: **Ara** (`tel:[TELEFON]`) ve **Yol tarifi**. Puan tek satır sade metin olarak.

**2. Kısa tanıtım (açık)** — 3-4 cümle. Abartısız, güven veren ton.

**3. Hizmetler / ürünler (açık)** — mantıklı başlıklara ayır, ince çizgilerle ayrılmış listeler. Fiyat yazma. Araya 2-3 fotoğraf.

**4. Değerlendirmeler (koyu)** — sadece puan ve sayı, artı "Google'da yorumları oku" butonu:
`https://www.google.com/search?q=[İŞLETME+ADI+İLÇE]`

**Önemli:** Hiçbir müşteri yorumunu metin olarak yazma, uydurma yorum da ekleme. Yorumların telifi yazan kişilerde. Sadece puanı göster. İstersen kendi cümlelerinle 3 kısa öne çıkan başlık yaz.

**5. [Varsa sipariş / randevu bölümü (açık)]** — butonlar `href="#"` kalsın, yanlarına `<!-- BURAYA gerçek link -->` yorumu koy.

**6. İletişim ve konum (koyu)** — adres, tıklanabilir `tel:` linki, saatler, Google Maps iframe:
`https://maps.google.com/maps?q=[İŞLETME+ADI+İLÇE]&output=embed`

**7. Mobil alt çubuk** — sadece mobilde, ekran altına sabit: **Ara** + **Yol tarifi**.
[Numara cep telefonuysa WhatsApp butonu da ekle: `https://wa.me/90XXXXXXXXXX`. Sabit hatsa WhatsApp ekleme.]

**8. Footer** — ad, adres, telefon, saatler. Küçük ve sade.

## METİN YAZIMI

- Sade ve doğrudan yaz. Klişe reklam dilinden uzak dur.
- Uydurma bilgi ekleme: kuruluş yılı, ödül, sertifika, tecrübe süresi, personel sayısı yazma. Sadece verdiğim bilgileri kullan.
- Büyük harfle yazılmış etiketler (ALL CAPS) kullanma.
- Buton metinleri ne yapacağını söylesin.

Şimdi bu siteyi üret.
