# Durum (her oturum başında oku, sonunda güncelle)

**Aşama:** Yön değişikliği — Upwork RF hizmeti (veri işi MKK/KİK yanıtı bekliyor) · **Son güncelleme:** 2026-11-10 · **Harcanan sermaye:** 0 $ / 50 $

## Bu oturumda yapılanlar
- 5 adayın robots.txt, kullanım koşulları ve teknik erişimi kontrol edildi → `docs/hukuk/kaynaklar.md`
- Apify Store rakip taraması (resmî Store API) → `docs/asama0/rakip-tablosu.md`, araç: `scripts/apify_rakip_ara.py`
- Puanlama ve en iyi 2 aday önerisi → `docs/asama0/puanlama.md`
- MKK ve KİK için bilgi talebi taslakları → `pazarlama/taslaklar/izin-talepleri.md` (gönderilmedi)

## 2026-11-10 EKAP testi sonucu
- EKAP ön yüz kodu, tüm veri API'lerini Cloudflare Turnstile insan doğrulamasıyla koruyor. Kural 3 gereği EKAP Actor'ü **durduruldu**. API'ye hiç istek atılmadı.
- Apify'daki EKAP rakipleri bu korumayı muhtemelen aşıyor veya bozuk; bizim için yol değil.

## Onay bekleyenler (kurucu)
1. MKK (KAP) ve KİK (EKAP resmî veri kanalı) e-postalarını göndermek — `pazarlama/taslaklar/izin-talepleri.md`
2. Yeni aday araştırması: resmî API'si / açık veri lisansı olan kaynaklar (ör. TCMB EVDS, ilan.gov.tr yeniden test)
3. Apify hesabı (ücretsiz)

## Sonraki adım
- Onay gelirse resmî API'li Türk kaynaklarını tara, rakip + lisans tablosu çıkar.

## Riskler
- Apify'da Türk kamu verisi talebi çok düşük (rakipler ayda 1–2 kullanıcı).
- İki ana aday (EKAP, KAP) kurum izni olmadan kullanılamıyor.

## 2026-11-15 Upwork
- Profil başlığı ve açıklaması güncellendi (kurucu onayıyla). Saatlik ücret 30 $ (kurucu web'den değiştirdi).
- Connects bakiyesi 0 → teklif verilemiyor. Satın alma yalnız web'den (kurucu).
- İlk aday ilan: KiCad 9 Mezzanine (380–390 MHz RF alıcı). Engel: 300 MHz–1 GHz arası iki gerçek kart örneği gerekiyor; kurucudan bilgi bekleniyor.
- Taslaklar: `pazarlama/upwork/`
- 2026-11-15: Kurucu Connects almak istemiyor → Connects'siz yol: davetler (bedava), Project Catalog ve Fiverr ilanı (web'den, kurucu açar).
  Profil: müsaitlik "30 saatten az" yapıldı, beceriler 9 → 17. Teklif taslakları Connects gelirse kullanılacak.
