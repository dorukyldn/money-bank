# Teklif taslağı — "KiCad 9 Mezzanine Board Design" (ONAY BEKLİYOR — gönderilmedi)

İlan: https://www.upwork.com/jobs/~022121743665693652248 · Müşteri: Kanada, 4,92 puan, 13 sözleşme, %63 işe alım oranı
Bedel: 14 Connects (= 2,10 $; Connects 0,15 $/adet — Upwork Help Center). Bakiye şu an 0.

## KURUCU KONTROLÜ (gönderimden önce)
- [ ] İlan "300 MHz–1 GHz arası kendi yerleşimini yaptığın iki kart" istiyor. Bunlar sende gerçekten var mı?
      Yoksa bu ilana teklif VERİLMEZ (uydurma portföy yok).
- [ ] İş tahmini 22–28 saat el ile KiCad çalışması (TAHMİN). Bunu sen yapacaksın; ben stackup/empedans hesabı,
      DRC analizi, rapor ve kontrol yaparım. Takvimin uygun mu?

## Tarama sorusu cevabı
For 50 Ω microstrip on 0.2 mm FR4 I calculate roughly 0.34–0.37 mm, depending on the laminate's actual εr (4.2–4.6)
and finished outer copper (18 µm + plating vs 35 µm). Your 0.389 mm computes to about 47–49 Ω with those values,
so before routing I would lock the exact prepreg (e.g. the fab's 7628 stackup and its stated εr) and confirm the width
with a field solver against that stackup. I would expect it to land near 0.35–0.36 mm.

On the 770 MHz LO crossing the RF chain at 90°: the first change is to remove the crossing — re-route the LO around the
RF chain on F.Cu so it never shares or crosses that path, keep a stitched ground/via fence between the two, and keep
the LO short from the PLL to the demodulator. A 90° crossing minimises coupling but does not remove it, and since the
RF path has no vias, routing around is the clean fix.

## Teklif metni
Hello,

I am an RF design engineer (BEng Electronic Engineering) working in RF PCB layout, filters, power dividers and RFIC
design, and I work in KiCad.

I read your brief closely. Two points before routing:

1. Stackup/width: your computed 0.389 mm looks slightly wide for 0.2 mm FR4 — by my calculation it lands around
   47–49 Ω. I would fix the fab stackup first (prepreg type and εr), then confirm the width with a field solver and
   put the numbers in the impedance report, as your acceptance criteria require.
2. SPI and CLK10M crossing the RF section: I would route them around the shield-can area on an inner layer away from
   the LO and RF chain, with the RF ground on In1.Cu left unbroken.

Plan (fixed price, three milestones as you described):
1. Stackup document + RF chain (SMA → SAW → LNA → attenuator → balun → demodulator + LO) hand-routed at 50 Ω, shield-can
   outline and stitching — for your review.
2. Remaining nets routed, SPI/CLK10M out of the keepout, DRC 0 errors with any exception documented — for review.
3. Fab package: Gerbers, drill, CPL, BOM, DRC report, and a short note listing every change and why.

Estimate: [__] hours, total $[____] ([M1 $__ / M2 $__ / M3 $__]), [2] revision rounds per milestone.

Examples of 300 MHz–1 GHz boards I laid out: [KURUCU EKLEYECEK — yalnız gerçek işler]

Best regards,
Doruk
