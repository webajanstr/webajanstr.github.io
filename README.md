# WebAjans — kurulum rehberi

Sıfır maliyetli demo site altyapısı. Tek GitHub reposu, sınırsız site, otomatik yayın.

---

## Adım 1 — GitHub hesabı ✅

Hesap açıldı, kullanıcı adı **`webajanstr`** olarak belirlendi.

Bu ad tüm demo adreslerinin başında duracak:

```
webajanstr.github.io/kilisli-ali-usta/
```

İleride ajans domaini alırsan `webajanstr.com` veya `webajanstr.com.tr` ile eşleşsin diye bu adı seçtik.

Not: Google hesabıyla giriş yaptığın için GitHub'da ayrı bir şifren yok. Tarayıcıdan dosya yüklerken sorun olmaz; ileride bilgisayardan `git push` yapmak istersen GitHub Desktop kur ya da Personal Access Token üret.

---

## Adım 2 — Repoyu oluştur

New repository:

- **Repository name:** `webajanstr.github.io` — kullanıcı adın neyse, sonuna `.github.io` ekle. Bu isim tam olarak böyle olmalı, yoksa çalışmaz.
- **Public** seç. Ücretsiz planda GitHub Pages sadece public repolarda çalışıyor.
- "Add a README file" kutusunu işaretle.
- Create repository.

---

## Adım 3 — Dosyaları yükle

Bu paketteki dosyaları repoya at. İki yol var.

**Tarayıcıdan (en kolay):** Repo sayfasında "Add file" → "Upload files" → klasördeki her şeyi sürükle → Commit.

Dikkat: `.github` klasörü noktayla başladığı için bazı sistemlerde gizli görünür. Yükleme sonrası repoda `.github/workflows/pages.yml` dosyasının göründüğünü kontrol et. Görünmüyorsa "Add file" → "Create new file" ile yolu `.github/workflows/pages.yml` yazıp içeriğini elle yapıştır.

**Git ile:**

```bash
git clone https://github.com/webajanstr/webajanstr.github.io.git
cd webajanstr.github.io
# paketteki dosyaları buraya kopyala
git add .
git commit -m "kurulum"
git push
```

Klasör yapısı şöyle olacak:

```
webajanstr.github.io/
├── .github/workflows/pages.yml   ← otomatik yayın
├── sites/                        ← YAYINLANAN KLASÖR
│   ├── index.html                ← kök sayfa
│   └── 404.html
├── araclar/
│   ├── yeni.sh                   ← macOS / Linux
│   └── yeni.ps1                  ← Windows
├── sablonlar/
│   └── askida.html               ← ödeme gecikince koyacağın sayfa
├── PROMPT-kilisli-ali-usta.md
├── PROMPT-sablon.md
└── README.md
```

Sadece `sites/` klasörü yayına çıkıyor. Diğer her şey repoda durur ama siteye dahil olmaz.

---

## Adım 4 — Pages'i aç

Repo → **Settings** → sol menüden **Pages** → **Source** kutusundan **GitHub Actions** seç.

"Deploy from a branch" değil, **GitHub Actions**. Bu önemli: kendi workflow'unla yayınlayınca saatte 10 build sınırı uygulanmıyor, istediğin kadar push atabiliyorsun.

---

## Adım 5 — İlk yayını test et

Repo → **Actions** sekmesi. "Deploy to GitHub Pages" işi yeşil tik alana kadar bekle (1-2 dakika).

Sonra tarayıcıda aç:

```
https://webajanstr.github.io
```

Nötr bir karşılama sayfası görüyorsan kurulum tamam.

---

## Adım 6 — İlk siteyi üret

`PROMPT-kilisli-ali-usta.md` dosyasını aç, içindeki metnin tamamını kopyala.

aistudio.google.com → yeni sohbet → yapıştır → gönder.

**AI Studio'nun "GitHub'a gönder" butonunu kullanma.** O buton her seferinde ayrı bir repo açıyor, senin düzenini bozar. Sadece üretilen HTML kodunu kopyala.

---

## Adım 7 — Siteyi repoya koy

Klasörü ve dosyayı oluştur:

```
sites/kilisli-ali-usta/index.html
```

Hızlandırmak için: kodu kopyaladıktan sonra

```bash
# macOS / Linux
./araclar/yeni.sh kilisli-ali-usta
```

```powershell
# Windows
.\araclar\yeni.ps1 kilisli-ali-usta
```

Script panodaki kodu doğru yere kaydediyor.

Sonra:

```bash
git add . && git commit -m "kilisli-ali-usta" && git push
```

1-2 dakika sonra:

```
https://webajanstr.github.io/kilisli-ali-usta/
```

---

## Adım 8 — Fotoğraflar

Site `./foto/1.jpg` ... `./foto/5.jpg` yollarını arıyor. Dosya yoksa yerine sıcak bir renk bloğu geliyor, site kırılmıyor.

Fotoğrafları şuraya koy:

```
sites/kilisli-ali-usta/foto/1.jpg
```

Nereden bulacaksın:

- **En iyisi:** işletmeden iste. Zaten satış konuşmasının doğal bir parçası.
- **Geçici:** pexels.com veya unsplash.com'dan ücretsiz indir (lahmacun, kebap, kömür ateşi).
- **Yapma:** Google'daki müşteri fotoğraflarını indirip kullanma. Telifi fotoğrafı çeken kişide.

Fotoğrafları 1600px genişliğe küçült, JPG olarak kaydet. Repo boyutu 1 GB'ı geçmesin (300 site × 5 foto için foto başına ~600 KB'ta kal).

---

## Adım 9 — Sonraki işletmeler

Her yeni işletme için:

1. `PROMPT-sablon.md` dosyasını aç
2. Köşeli parantezli alanları doldur
3. AI Studio'ya yapıştır
4. `./araclar/yeni.sh isletme-slug`
5. 20-30 site biriktir, tek push at

Slug kuralı: küçük harf, Türkçe karakter yok, boşluk yerine tire. `Kilisli Ali Usta` → `kilisli-ali-usta`.

---

## Adım 10 — Müşteri "evet" derse

Demo klasörünü kendi reposuna taşı. GitHub Pages repo başına tek custom domain kabul ediyor ve o domaini sitenin köküne bağlıyor — monorepo'daki bir klasöre domain bağlayamazsın.

1. Yeni repo aç: `kilisli-ali-usta`, public
2. `sites/kilisli-ali-usta/` içindekilerin hepsini yeni reponun köküne kopyala
3. Yeni repo → Settings → Pages → Source: **Deploy from a branch** → `main` / `(root)`
4. Settings → Pages → **Custom domain** kutusuna müşterinin domainini yaz, kaydet
5. Müşterinin domain panelinde DNS kayıtlarını gir:

```
A     @     185.199.108.153
A     @     185.199.109.153
A     @     185.199.110.153
A     @     185.199.111.153
CNAME www   webajanstr.github.io
```

6. DNS yayılmasını bekle (genelde 1 saat, en fazla 24 saat)
7. Settings → Pages → **Enforce HTTPS** kutusunu işaretle (sertifika hazır olana kadar seçenek görünmeyebilir)
8. Eski demo klasörünü monorepo'dan sil

**Sıralama önemli:** önce GitHub'a domaini ekle, sonra DNS'i ayarla. Tersini yaparsan domain bir süre sahipsiz kalır.

**Uyarı:** Demo monorepo'suna (`webajanstr.github.io` reposuna) asla custom domain ekleme. User site reposuna domain eklersen hesabındaki tüm proje siteleri o domaine yönlenir ve hepsi kırılır.

---

## Adım 11 — Askıya alma

Ödeme gelmezse siteyi kapatmanın en yumuşak yolu: `sablonlar/askida.html` dosyasını ilgili sitenin `index.html`'i olarak kopyala, push at. Müşteri 404 yerine açıklayıcı bir sayfa görür, geri açmak tek commit.

```bash
cp sablonlar/askida.html sites/kilisli-ali-usta/index.html
git commit -am "askiya alindi: kilisli-ali-usta" && git push
```

Kendi reposu olan müşteri için alternatifler: Settings → Pages → Unpublish site, ya da repoyu private yapmak (ücretsiz planda private repoda Pages çalışmaz, site kapanır).

Not: bu teknik bir kilit değil. Repo public, HTML herkesin görebileceği yerde. Gerçek kaldıraç domainin kimin üstüne kayıtlı olduğu. Sözleşmeyi buna göre kur.

---

## Bilmen gereken sınırlar

| Sınır | Değer | Senin durumun |
|---|---|---|
| Repo boyutu | 1 GB | 300 site × ~3 MB = rahat |
| Aylık trafik | 100 GB (yumuşak) | Demo trafiği çok altında |
| Build sıklığı | Kendi workflow'unda sınır yok | — |
| Custom domain | Repo başına 1 tane | Dönüşümde ayrı repo |
| Maliyet | 0 | — |

Repo public olduğu için klasör listesi de herkese açık. Yani biri `github.com/webajanstr/webajanstr.github.io` adresine bakarsa kaç işletmeye demo hazırladığını görebilir. Satış mesajında "size özel" gibi bir dil kullanacaksan bunu aklında tut.
