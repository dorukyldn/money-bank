# Teklif — "RF Engineer for Remote Advice on Amplifier Module Troubleshooting" (ONAY BEKLİYOR)
İlan: https://www.upwork.com/jobs/~022117546872912161398 · Pakistan, 28–52 $/saat, 5–10 teklif, 15 Connects
Not: müşteri "chat or video call" diyor — biz chat + yazılı teşhis öneriyoruz.
Önerilen ücret: 35 $/saat (TAHMİN; ilk iş, 0 yorum)

---
Hello,

I am an RF/microwave engineer with 5 years of industry experience in power amplifier design and bench work — Class-AB
LDMOS PAs (20–500 MHz, 100 W+), balanced HF/VHF amplifiers, an 18–40 GHz MMIC driver amplifier, and Doherty PAs
(IEEE paper, 2026). I test daily with spectrum analyzers, VNAs and signal generators.

"Draws current but no RF output" usually narrows down quickly. The order I would walk your technician through:

1. Bias first: drain/collector voltage and quiescent current against the datasheet, gate voltage and bias sequencing
   (critical for GaN). Current far above nominal points to oscillation or a damaged device; current at nominal points to
   the input or output path.
2. Oscillation check: wide-span spectrum analyzer sweep with a terminated input — a PA that oscillates out of band draws
   current and shows little or no in-band power.
3. Drive: confirm the RF input actually reaches the device (cable, connector, input attenuator, driver stage).
4. Output path: connector, isolator/circulator, output match and DC-block capacitors (cracked capacitors are common),
   and any protection, ALC, VSWR or enable/PTT logic that mutes the output.

I work in clear written English: I send step-by-step test instructions, review your photos and readings, and finish
with a short written diagnosis per module. Chat works best for me.

To start, could you share: device type (LDMOS / GaN / GaAs), frequency band, supply voltage, measured current, and a
photo of the board?

Best regards,
Doruk
