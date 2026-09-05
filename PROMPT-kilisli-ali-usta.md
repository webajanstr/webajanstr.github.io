# AI Studio promptu — Kilisli Ali Usta

Aşağıdaki çizginin altındaki metnin **tamamını** kopyalayıp Google AI Studio'ya yapıştır.

---

Sen deneyimli bir web tasarımcısısın. İstanbul Beylikdüzü'nde bir kebap ve lahmacun restoranı için tek sayfalık tanıtım sitesi tasarlayacaksın. İşletmenin şu an hiç web sitesi yok, bu site onun ilk dijital vitrini olacak.

## ÇIKTI KURALLARI — bunlara kesinlikle uy

1. **Tek bir `index.html` dosyası** üret. Başka hiçbir dosya oluşturma.
2. React, Vue, Vite, npm, TypeScript, build adımı **kullanma**. Saf HTML + CSS + JavaScript.
3. CSS'i `<style>` etiketi içine, JS'i `<script>` etiketi içine göm. Harici yerel dosya bağlama (`style.css`, `script.js` olmayacak).
4. **Tüm yollar göreli olsun**, `./` ile başlasın. Başında `/` olan mutlak yol asla kullanma — bu site bir alt klasörde yayınlanacak, mutlak yol siteyi kırar.
5. Harici kaynak olarak sadece şunlara izin var: Google Fonts, Google Maps embed iframe. Başka CDN, kütüphane, framework yok.
6. Mobil öncelikli tasarla. Ziyaretçilerin çoğu telefondan gelecek.
7. Tüm metinler Türkçe.
8. Kodu tek parça halinde, açıklama yapmadan ver.

## GÖRSELLER

Fotoğraflar `./foto/1.jpg` … `./foto/5.jpg` yollarından gelecek. Dosyalar henüz yok, o yüzden her `<img>` etiketine `onerror` ekle: dosya bulunamazsa görselin yerine sıcak bir CSS renk bloğu (kömür–bakır tonlarında) görünsün, site kırılmasın.

Örnek yaklaşım:
```html
<img src="./foto/1.jpg" alt="..." onerror="this.style.display='none'; this.parentElement.classList.add('foto-yok')">
```

## TASARIM YÖNÜ

Bu bir Kilis–Antep mutfağı. Görsel dili oradan kur: kömür ateşi, bakır sini, isot, taş fırın, Antep fıstığı. Genel bir "restoran şablonu" istemiyorum.

**Renk paleti** (bu değerleri kullan):
- Kömür `#241E1A` — koyu bölümlerin arka planı
- Hamur `#F4ECDD` — açık bölümlerin arka planı
- İsot `#8E2C1A` — ana vurgu, butonlar
- Bakır `#B0763C` — ince çizgiler, ayraçlar, ikincil vurgu
- Fıstık `#6B7C3D` — çok az yerde, küçük detaylar
- Mürekkep `#3A322B` — açık zeminde gövde metni

**Tipografi:**
- Başlıklar: `Zilla Slab` (Google Fonts), 600–700 ağırlık
- Gövde: `Karla` (Google Fonts), 400–500 ağırlık
- Türkçe karakterler (ğ ş ı İ ç ö ü) düzgün görünsün diye `latin-ext` alt kümesini de yükle

**Düzen ilkeleri:**
- Koyu ve açık bölümler dönüşümlü olsun; hero koyu, menü açık, iletişim koyu.
- Metinler sola hizalı. Ortalanmış blok metinden kaçın.
- Bölüm ayraçları için bakır renkte 1px ince çizgiler kullan.
- Cesaretini tek bir yere harca: hero. Geri kalanı sakin ve düzenli tutsun.
- Her bölüme kutu/kart eklemeye çalışma. Aynı köşe yuvarlaklığında sıralanmış kartlar sıradan durur.
- Kaydırma animasyonu ekleme. Sadece butonlarda hover/focus geçişi olsun.
- Klavye ile gezilebilir olsun, odak halkaları görünsün.

## İŞLETME BİLGİLERİ

- **Ad:** Kilisli Ali Usta Kebap & Lahmacun
- **Ne yapar:** Kilis ve Antep usulü kebap, lahmacun, tava
- **Adres:** Kavaklı Mah. Muhammed Cinnah Sk. No:51, Beylikdüzü / İstanbul
- **Telefon:** 0212 999 02 65
- **Çalışma saatleri:** Her gün, gece 02:00'a kadar açık
- **Kişi başı ortalama:** 400–600 TL
- **Google puanı:** 4,3 / 5 — 83 değerlendirme
- **Yandex puanı:** 4,4 / 5 — 11 değerlendirme
- **Paket servis:** Yemeksepeti, Migros Yemek, TGO Yemek

**Öne çıkan lezzetler** (müşteri değerlendirmelerinde en çok geçenler):
Antep usulü lahmacun, sarımsaklı lahmacun, Adana dürüm, satır kıyma Adana (köz ateşinde), Kilis tava, saç tava, kebap tabakları, mezeler, çorba, künefe.

**Müşterilerin en çok övdüğü yanlar:** lezzet ve malzeme kalitesi, sıcak ve hızlı paket servis, geç saate kadar açık olması, temizlik, güler yüz.

## SAYFA BÖLÜMLERİ

**1. Hero (koyu)**
Tam ekran yüksekliğinde değil, ekranın yaklaşık %75'i kadar. Arka planda `./foto/1.jpg` üzerine kömür rengi koyu bir katman.
- İşletme adı büyük ve sola hizalı
- Altında tek cümlelik tanım: Kilis ve Antep usulü kebap, odun ateşinde lahmacun
- Küçük bir satır: Beylikdüzü · Gece 02:00'a kadar açık
- İki buton yan yana: **Ara** (`tel:+902129990265`) ve **Yol tarifi**
- Puan bilgisi burada küçük ve sade dursun: Google 4,3 · 83 değerlendirme. Rozet/kart yapma, tek satır metin yeter.

**2. Kısa tanıtım (açık zemin)**
3–4 cümlelik bir paragraf. Kilis mutfağı, köz ateşi, taze hamur üzerine. Abartılı reklam dili kullanma, sade ve güven veren bir ton.

**3. Lezzetler (açık zemin)**
Yukarıdaki lezzet listesini bölümlere ayır: *Lahmacunlar*, *Kebaplar*, *Tavalar*, *Başlangıç ve tatlı*. Fiyat yazma. Her başlığın altında ürünler basit bir liste halinde, bakır ince çizgilerle ayrılmış olsun.
Bölümün içinde 2–3 fotoğraf yerleştir (`./foto/2.jpg`, `./foto/3.jpg`).

**4. Değerlendirmeler (koyu zemin)**
Sadece şunlar olsun:
- Google 4,3 / 5 — 83 değerlendirme
- Yandex 4,4 / 5 — 11 değerlendirme
- Altında bir buton: "Google'da yorumları oku" → `https://www.google.com/search?q=Kilisli+Ali+Usta+Kebap+Lahmacun+Beylikd%C3%BCz%C3%BC`

**Önemli:** Hiçbir müşteri yorumunu metin olarak yazma, uydurma yorum da ekleme. Yorumların telifi yazan kişilerde. Sadece puanı göster ve okumak isteyeni Google'a yolla. Bunun yerine kendi cümlelerinle 3 kısa öne çıkan başlık yazabilirsin (örneğin "Köz ateşinde pişen Adana", "Gece 02:00'a kadar sıcak paket servis", "Antep usulü lahmacun").

**5. Paket servis (açık zemin)**
Üç buton: Yemeksepeti, Migros Yemek, TGO Yemek.
`href="#"` bırak ve her birinin yanına HTML yorumu koy: `<!-- BURAYA gerçek link yapıştırılacak -->`

**6. İletişim ve konum (koyu zemin)**
- Adres, telefon (tıklanabilir `tel:` linki), çalışma saatleri
- Google Maps iframe, tam olarak bu adresle:
  `https://maps.google.com/maps?q=Kilisli%20Ali%20Usta%20Kebap%20Lahmacun%20Beylikd%C3%BCz%C3%BC&output=embed`
- Harita responsive olsun, mobilde taşmasın

**7. Mobil alt çubuk**
Sadece mobilde görünen, ekranın altına sabitlenmiş iki butonlu bir çubuk: **Ara** ve **Yol tarifi**.
WhatsApp butonu ekleme — bu numara sabit hat, WhatsApp'ı yok.

**8. Footer**
İşletme adı, adres, telefon, çalışma saati. Küçük ve sade.

## METİN YAZIMI

- Sade ve doğrudan yaz. "Eşsiz lezzet yolculuğu", "damaklarda iz bırakan" gibi klişelerden uzak dur.
- Uydurma bilgi ekleme: kuruluş yılı, ödül, şef adı, kapasite, "40 yıllık tecrübe" gibi şeyler yazma. Sadece yukarıda verdiğim bilgileri kullan.
- Büyük harfle yazılmış etiketler (ALL CAPS) kullanma.
- Buton metinleri ne yapacağını söylesin: "Ara", "Yol tarifi", "Google'da yorumları oku".

Şimdi bu siteyi üret.
