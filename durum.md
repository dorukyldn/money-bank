# Durum (her oturum başında oku, sonunda güncelle)

**Aşama:** 0 — Doğrulama · **Son güncelleme:** 2026-11-10 · **Harcanan sermaye:** 0 $ / 50 $

## Bu oturumda yapılanlar
- 5 adayın robots.txt, kullanım koşulları ve teknik erişimi kontrol edildi → `docs/hukuk/kaynaklar.md`
- Apify Store rakip taraması (resmî Store API) → `docs/asama0/rakip-tablosu.md`, araç: `scripts/apify_rakip_ara.py`
- Puanlama ve en iyi 2 aday önerisi → `docs/asama0/puanlama.md`
- MKK ve KİK için bilgi talebi taslakları → `pazarlama/taslaklar/izin-talepleri.md` (gönderilmedi)

## Onay bekleyenler (kurucu)
1. Aday seçimi: EKAP (1.) + KAP (2., MKK onayı şartıyla) / yedek ilan.gov.tr
2. MKK ve KİK e-posta taslaklarının gönderilmesi (kurucu gönderir)
3. Apify hesabı açılması (ücretsiz plan) — Aşama 1'de yayın için gerekli

## Sonraki adım (onay sonrası)
- `actors/ekap-ihale-izleyici/` iskeleti: Python + Apify SDK, testler, örnek çıktı, README (TR/EN)
- Önce Apify sunucusundan robots izinli EKAP ilan sayfasına düz HTTP erişim testi; geçmezse dur, bildir.

## Riskler
- Apify'da Türk kamu verisi talebi çok düşük (rakipler ayda 1–2 kullanıcı). 60. gün ölçütü iddialı.
- EKAP tarayıcı erişimine 502 veriyor; düz HTTP yolu kırılırsa Actor çalışmaz.
