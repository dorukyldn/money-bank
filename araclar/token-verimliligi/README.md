# Token verimliliği araçları

Kaynak: dorukyldn/Doruk `araclar/token-verimliligi/` (2026-10-14, 2026-11-09).

| Araç | Nerede | Ne yapar |
|---|---|---|
| Token kuralları (drona23/claude-token-efficient, MIT) | `CLAUDE.md` + `~/.claude/CLAUDE.md` | Bir kez oku, dolgu yok, tahmin yok, hedefli düzenleme |
| caveman (JuliusBrussee/caveman d262ab3, Apache-2.0) | `.claude/skills/caveman/` | `/caveman` ile kısa yanıt; `stop caveman` ile kapanır |
| rtk v1.0.0 OSS (rtk-ai/rtk, Apache-2.0) | `.claude/settings.json` hook'u; ikili ortam setup betiğinden | Bash çıktısını sıkıştırır; rtk yoksa hook hiçbir şey yapmaz |
| graphify 0.9.87 (PyPI `graphifyy`, Apache-2.0) | ortam setup betiği, kullanıcı skill'i | Kod bilgi grafiği; kod büyüyünce `graphify update .` (oturum sonunda, arka planda) |
| ccusage 20.0.48 (MIT) | ortam setup betiği | Ölçüm: `ccusage daily`, `ccusage session` |

## Kurulum
- **Bulut:** Oturumu "RF" ortamında aç; setup betiği `kurulum.sh` ile aynıdır, her şey otomatik kurulur.
- **Başka ortam / yerel makine:** `sh araclar/token-verimliligi/kurulum.sh` (kullanıcı seviyesine kurar).
- Kontrol: `rtk gain`, `graphify --version`, `ccusage daily`.

Kasıtlı olarak taşınmayanlar: 10 araçlık SessionStart hook'u (plugin skill listeleri her
oturumda bağlama eklenir), LLM Council hook'u (her mesaja metin ekler), RF ajanları/skill'leri.
Tasarruf yüzdeleri araçların kendi iddiasıdır; ölçmek için ccusage ile temel çizgi alınmalı.
