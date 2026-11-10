# Türkiye İş Verisi — Çalışma Kuralları

Kurucu ve karar sahibi: Doruk Yıldön. Claude öneri sunar, kod yazar, taslak hazırlar;
yayın, ödeme, fiyat değişikliği ve dışa giden her mesaj Doruk'un onayıyla yapılır.

## Süreklilik
- Her oturum başında `durum.md` oku, oradan devam et; önemli adımdan sonra güncelle, commit + push.
- Gelir/kullanıcı verisi `metrikler.md`, kararlar `kararlar.md`, hukuk kontrolleri `docs/hukuk/`.

## Değişmez kurallar
- Veri uydurma yok. Pazar, rakip, fiyat, gelir = kaynak linkiyle; tahmin = "TAHMİN".
- Kişisel veri (KVKK) toplanmaz. Captcha, giriş duvarı veya erişim engeli aşılmaz.
  Kullanım koşulları yasaklayan kaynak kullanılmaz.
- Spam, sahte yorum/kullanıcı, trading yasak.
- Dil: belgeler Türkçe; ürün sayfaları İngilizce + Türkçe.

## Token verimliliği (drona23/claude-token-efficient uyarlaması, MIT)
- Dosyayı bir kez oku; değişmedikçe yeniden okuma. 100 KB üstü dosyayı offset/limit ile oku.
- Yanıtta giriş/kapanış dolgusu, soruyu tekrar etme, gereksiz özet yok.
- Sürüm, bayrak, API adı tahmin edilmez; okunarak doğrulanır.
- Tam dosyayı yeniden yazmak yerine hedefli düzenleme.
- Kısa yanıt: `/caveman` (kod, belge, commit metnine uygulanmaz).
- Alt ajan yalnız gerektiğinde; rutin işte `model: "sonnet"`, basit taramada `"haiku"`. Ajan raporu ≤ 10 satır.
- Kod tabanı büyüyünce: `graphify-out/graph.json` varsa önce `graphify query "<soru>"`.
  `graphify update .` yalnız oturum sonunda, arka planda.
