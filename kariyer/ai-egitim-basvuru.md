# Yapay zekâ eğitim uzmanlığı — başvuru hazırlığı (2026-11-15)

## Doğrulanan ilanlar (resmî sayfalardan)
| Sıra | İlan | Durum | Ücret | Şart | Bağlantı |
|---|---|---|---|---|---|
| 1 | Mercor — Electrical & Hardware Engineering Experts | Açık ("Early applicant", 2 ay önce) | 100–120 $/saat, haftalık Stripe/Wise | 5+ yıl, son 3 yıl uygulamalı donanım; bir alanda derin uzmanlık: **RF/antennas**, power, analog, PCB, SI/PI | https://work.mercor.com/jobs/list_AAABoN2AhG3DPZYg43dGFICd |
| 2 | Mercor — Electrical Engineering Expert (yetenek havuzu) | Açık, sürekli ilan; proje çıkınca çağırırlar | Geçmiş projeler 70–120 $/saat | EE derecesi + tasarım/test tecrübesi | https://work.mercor.com/jobs/list_AAABoKMj8ATHeyLKYLFJq6Ox/electrical-engineering-expert |
| 3 | Turing — Electrical Engineering Expert | "Apply now" var, ücret yazmıyor | — | YL/doktora veya 4+ yıl; "Full-time" sözleşmeli, görev başına 30–90 dk | https://work.turing.com/r/vLk3EqiTAW |
Kapalı: Mercor "Computational EE & RF/Circuit Design Expert" → aynı uzmanlık için 2 numaralı havuza yönlendiriyor.

Ülke: Hiçbirinde ülke listesi yok; "fully remote", başvuruda çalışılan yer soruluyor. Türkiye'nin kabul edildiği DOĞRULANMADI.
Ödeme: Mercor Stripe veya Wise. Türkiye'den Wise kullanılması önerilir (Stripe'ın Türkiye'deki durumu doğrulanmadı).

## Başvuru sırası
1. Mercor #1 (en yüksek ücret, RF/anten tam uyum) → 2. Mercor #2 (havuz) → 3. Turing (tam zamanlı etiketli; işle çakışma riski).
Her birinde: CV yükle, çalışma yerini onayla, ~20 dk yapay zekâ mülakatı (Mercor).

## Başvuru özeti (İngilizce, form alanlarına yapıştır)
RF/microwave engineer with 5 years of industry experience in active and passive microwave hardware from HF to 40 GHz,
taking designs from simulation through measurement and production. Deep expertise: RF/antennas and RF/microwave
circuits — power amplifiers (Doherty, LDMOS, GaN, GaAs pHEMT RFIC), LNAs, mixers, PLL synthesizers, filters, Wilkinson
dividers, couplers, phased-array beamformer evaluation and calibration. Hands-on lab debugging with VNAs, spectrum
analyzers and signal generators (S-parameters, P1dB, IP3, harmonics, NF, phase/amplitude matching, 2.92 mm up to 40 GHz).
Tools: AWR Microwave Office, CST Studio Suite, Cadence, Altium Designer, Python, MATLAB. M.Sc. and B.Sc. EE (Yeditepe).
Author of five IEEE conference papers.

## Yapay zekâ mülakatı (~20 dk) hazırlığı
Muhtemel konular ve cevap iskeleti (somut sayı + karar gerekçesi + hata modu):
- **Bir tasarım hikâyesi:** 100 W LDMOS PA (20–500 MHz): geniş bant eşleme, harmonik < −30 dBc, ısıl doğrulama.
  "Neyi neden seçtim, neyi ölçtüm, ne bozuldu, nasıl düzelttim."
- **Simülasyonda çalışıp donanımda bozulan tasarım:** parazitikler, toprak dönüşü, osilasyon, bileşen toleransı,
  konnektör/fikstür de-embedding. (İlanın tam aradığı şey.)
- **Ölçüm hatası:** VNA kalibrasyonu (SOLT/TRL), port uzatma, 2.92 mm konnektör tekrarlanabilirliği.
- **Trade-off:** Doherty verim–doğrusallık; Wilkinson izolasyon–bant genişliği; LNA gürültü–kazanç eşlemesi.
- **Bir yapay zekâ cevabını değerlendirme:** "Bu çözümde hangi varsayım yanlış, nasıl test edersin?"

## GİZLİLİK KURALI (önemli)
Profen ve önceki işverenlerin gizli projeleri, müşterileri, çizimleri, ölçüm verileri ASLA paylaşılmaz.
Örnekler yalnız CV'deki genel düzeyde veya yayımlanmış IEEE bildirilerinden verilir. Başlamadan önce iş
sözleşmesindeki ek iş / rekabet / gizlilik maddelerini kontrol et.
