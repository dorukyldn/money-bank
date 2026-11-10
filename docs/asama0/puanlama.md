# Aşama 0 — Aday Puanlaması (2026-11-10)

Formül: **talep × rakipsizlik × erişilebilirlik ÷ bakım zorluğu** (her biri 1–5; büyük iyi, bakımda büyük = zor).
Ham veri: `rakip-tablosu.md` (Apify Store API), `../hukuk/kaynaklar.md`.

| Aday | Talep | Rakipsizlik | Erişilebilirlik | Bakım | Puan | Not |
|---|---|---|---|---|---|---|
| EKAP ihale izleyici | 4 | 3 | 0 | 3 | **0** (2026-11-10 güncel: Turnstile insan doğrulaması) | 2 rakip: afkdigital (4 toplam / 2 aylık kullanıcı), automatic (2 / 1). İkisinin de yorumu yok. robots izinli. |
| KAP bildirim izleyici | 4 | 3 | 2 | 3 | **8,0** | Rakip tamgadev (2 / 1, $5/1k bildirim). robots okunamıyor + BIST lisans riski → **hukuki onay şartı**. |
| ilan.gov.tr | 2 | 5 | 2 | 3 | 6,7 | Rakip yok ama erişim doğrulanamadı. |
| Yemeksepeti | 3 | 2 | 0 | 4 | **0** | Cloudflare challenge → elendi. Rakip hipersoft 19 / 8. |
| EPDK akaryakıt | 2 | 4 | 0 | 2 | **0** | Captcha → elendi. Rakip gmpsignal 2 / 1. |

Puan gerekçeleri — talep: Apify'da Türk verisi için gerçek kullanım; rakipsizlik: rakip sayısı ve kalitesi;
erişilebilirlik: robots + koşullar + teknik engel; bakım: sayfa yapısının değişme sıklığı (TAHMİN).
Talep ve bakım puanları **TAHMİN**dir; diğerleri yukarıdaki ölçümlere dayanır.

## Öneri: en iyi 2 aday
1. **EKAP ihale ilanı izleyici** — hukuken en temiz, robots açıkça izinli, rakipler zayıf ve yorumsuz.
   Katman B'deki "İhale alarmı" SaaS'ının da çekirdeği. Teknik risk: tarayıcı tabanlı erişim 502 alıyor,
   yalnız düz HTTP ile robots izinli sayfalar okunacak; bu yol işe yaramazsa geliştirme durur.
2. **KAP bildirim izleyici — yalnız MKK'dan yazılı olumlu yanıt gelirse.** Gelmezse 2. sıra **ilan.gov.tr**
   (Apify sunucusundan erişim testi geçerse).

## Dürüst talep uyarısı (önemli)
Apify Store'da Türkiye verisi için en popüler Actor'ler bile ayda ~30–120 kullanıcıya ulaşıyor
(fatihtahta/trendyol-scraper 114, maximedupre/trendyol-scraper 62, blackfalcondata/kariyer-scraper 31).
Hedef kaynaklarımızdaki rakipler ayda **1–2 kullanıcı**da. Bu, bu kaynaklar için Apify pazar yeri talebinin
**şu an çok küçük** olduğunu gösteriyor.
- 60. gün ölçütü (≥ 20 aylık kullanıcı veya ≥ 1.000 TL) **iddialı**; tutmama olasılığı yüksek. **TAHMİN**
- Apify tek başına 300.000 TL/ay'a giden yol değil. Gelirin asıl kaynağı Türk firmalarına doğrudan satılan
  Katman B (ihale alarmı aboneliği) olur; Apify Actor'ü ucuz bir talep testi ve veri motoru işlevi görür.
- Öneri: Aşama 1'de Actor'ü yayınlarken aynı anda basit bir Türkçe bekleme listesi sayfası açalım
  (gerçek talep sinyali için). Bu yeni bir dışa dönük adımdır — onayın gerekir.
