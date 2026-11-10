# Kaynakların Hukuki ve Teknik Durumu

Kontrol tarihi: 2026-11-10. Kontrol, bu oturumun bulut makinesinden (veri merkezi IP'si) yapıldı.
Kendini tanıtan dürüst bir User-Agent (`TurkiyeIsVerisiBot/0.1`) kullanıldı. Hiçbir engel aşılmadı.

Kural (kurucu kararı): captcha, giriş duvarı veya bot engeli olan kaynaklar **kullanılmaz**. Kişisel veri toplanmaz.

| # | Kaynak | robots.txt | Kullanım koşulları | Erişim engeli | Karar |
|---|---|---|---|---|---|
| 1 | KAP (kap.org.tr) | **Okunamıyor**: `/robots.txt` HTTP 666 + MKK hata sayfası döndürüyor (ana sayfa 200). RFC 9309'a göre okunamayan robots "tam yasak" sayılmalı. | Sitede kullanım koşulu / yasal uyarı linki bulunamadı. KAP SSS ve KAP Yönergesi PDF'lerinde yeniden yayın hükmü yok. **Ancak** Borsa İstanbul "KAP Verileri"ni lisanslı veri yayın ürünü olarak satıyor [1]; MKK sayfası "veri yayın kuruluşları" KAP bildirimlerini eş zamanlı yayınlıyor diyor [2]. | Yok (HTML 200) | **ŞARTLI** — ücretli yeniden dağıtım için MKK'dan yazılı görüş alınmadan geliştirilmez. Taslak e-posta: `pazarlama/taslaklar/izin-talepleri.md` |
| 2 | EKAP (ekap.kik.gov.tr / ekapv2) | `ekap.kik.gov.tr/ekap/robots.txt`: `User-agent: * Disallow:` → **her şeye izin** | Sitede ayrı bir kullanım koşulu bulunamadı (arama: [3]). Elektronik İhale Uygulama Yönetmeliği yalnız kayıtlı kullanıcıları düzenliyor. İhale ilanları 4734 sayılı kanun gereği kamuya açık. Piyasada EKAP verisini yeniden sunan ticari uygulamalar var (ör. "EKAP Mobil", KİK ile ilişkisiz [3]). | Düz HTTP 200. **Başsız tarayıcı (headless Chromium) 502 alıyor** → bot filtresi var. Belgelenmemiş iç API'ler denenmedi. | **UYGUN (dikkatle)** — yalnız robots izinli, kamuya açık ilan sayfaları; düşük hız; KİK'e bilgi amaçlı soru taslağı hazır. |
| 3 | Yemeksepeti | Okunamadı | Ticari platform; menü/fiyat verisi şirkete ait | **Cloudflare "managed challenge" (403)** | **ELENDİ** (kural 3: erişim engeli aşılmaz) |
| 4 | EPDK akaryakıt fiyatları | `epdk.gov.tr/robots.txt` yok (ana sayfaya 302) | Bulunamadı | Fiyat bülteni sorgusu (`bildirim.epdk.gov.tr/.../bultenSorgula.xhtml`) **captcha** içeriyor [4] | **ELENDİ** (captcha) |
| 5 | ilan.gov.tr | Okunamadı | Bulunamadı | HTTPS: sertifika zinciri doğrulanamıyor (eksik ara sertifika); HTTP: 503 | **BEKLEMEDE** — doğrulanamadı; Apify sunucularından ayrıca test edilmeli |

## Kaynaklar
1. Borsa İstanbul, Veri Yayın Ürünleri ("KAP Verileri", üçüncü taraf verileri / MKK): https://borsaistanbul.com/veriler/veri-yayini/veri-yayin-urunleri
2. MKK, KAP sayfası: https://www.mkk.com.tr/en/corporate-governance-services/kap-public-disclosure-platform
3. Elektronik İhale Uygulama Yönetmeliği: https://www.lexpera.com.tr/mevzuat/yonetmelikler/elektronik-ihale-uygulama-yonetmeligi · EKAP Mobil (KİK ile ilişkisiz ticari uygulama): https://apps.apple.com/pg/app/ekapmobile/id669912257
4. EPDK bayi satış fiyatı bülteni (üçüncü taraf atfı): https://bigpara.hurriyet.com.tr/akaryakit-fiyatlari/

## Açık hukuki sorular (avukat / mali müşavir değil, kurum görüşü gerekir)
- KAP: Kamuya açık bildirimlerin özet + link olarak ücretli Actor'de sunulması MKK/BIST veri lisansı kapsamına girer mi?
- EKAP: Otomatik, düşük hızlı ilan okuma için KİK'in bir sınırlaması var mı? (robots izin veriyor; yazılı teyit iyi olur)
- Genel: 5846 FSEK md. 39 vd. (veri tabanı hakkı) — kamu kurumu veritabanının "önemli kısmının" çoğaltılması riski. Tam döküm yerine filtreli / sınırlı sonuç sunmak riski azaltır. **TAHMİN — hukuki görüş değildir.**
