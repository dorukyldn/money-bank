# Teklif — "RF PCB Review" (antenli kart küçültme) (ONAY BEKLİYOR)
İlan: https://www.upwork.com/jobs/~022119540970066241938 · Kanada, 5★ (2 yorum), 950 $ harcama, 20–50 teklif, 14 Connects
Önerilen: sabit fiyat inceleme 250 $ (TAHMİN) veya 35 $/saat

---
Hello,

Miniaturizing a board with antennas on it is where RF problems usually appear: the antenna loses its ground clearance,
the matching network no longer fits the new environment, and nearby traces and the enclosure detune it.

I am an RF/microwave engineer (5 years in industry, HF to 40 GHz, five IEEE papers) and I review RF layouts for yield
and repeatability as part of my work.

What I would review on your current design and the smaller one:
- Antenna keep-out and ground clearance against the antenna or module vendor's reference layout
- Feed line: 50 Ω impedance for your stackup, length, vias, and a pi-matching network footprint so it can be tuned
- Coupling from switching regulators, clocks and digital lines near the antenna; ground stitching
- Effect of the enclosure, battery and hand/body on tuning, and what to measure (return loss with a VNA) on the first prototypes

Deliverable: a written findings list ranked Critical / Recommended / Optional, with board locations and proposed fixes,
plus layout guidance for the redesign.

Could you share the frequency band(s), antenna type (chip, PCB trace, module), the target board size, and the design
files (schematic + layout)?

Best regards,
Doruk
