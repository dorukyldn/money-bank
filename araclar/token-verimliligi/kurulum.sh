#!/bin/sh
# Token verimliliği araçlarını kullanıcı seviyesine (~/.claude) kurar; böylece
# bu makinedeki/ortamdaki TÜM projelerde geçerli olur.
# Bulut ortamı: içeriği ortam ayarlarındaki "Setup script" alanına yapıştır.
# Yerel makine: bir kez `sh kurulum.sh` koş.
# Kurulanlar: graphify CLI + skill, ccusage, rtk (Bash çıktısı sıkıştırma, Apache-2.0 sürümü), caveman skill'i,
# ~/.claude/CLAUDE.md token kuralları. Hata olsa da oturumu bozmaz (|| true).

export PATH="$HOME/.local/bin:$PATH"
RTK_VERSION="${RTK_VERSION:-v1.0.0}"
CAVEMAN_COMMIT="d262ab3"

# 1. rtk ikilisi (kurulum betiği SHA-256 doğrular)
if ! command -v rtk >/dev/null 2>&1 && [ ! -x "$HOME/.local/bin/rtk" ]; then
  curl -fsSL https://raw.githubusercontent.com/rtk-ai/rtk/refs/heads/master/install.sh \
    | RTK_EDITION=oss RTK_VERSION="$RTK_VERSION" sh || true
fi

# 1b. graphify CLI (kod bilgi grafiği; `graphify query` dosya okumaktan ucuz).
# Skill'i ve graphify-out/ her repoda ayrıca durur; grafik yoksa CLI boşta bekler.
command -v graphify >/dev/null 2>&1 || pip install -q graphifyy==0.9.87 || true
graphify install --platform claude >/dev/null 2>&1 || true   # ~/.claude/skills/graphify: tüm projelerde /graphify

# 1c. ccusage (tasarruf etmez, ölçer: `ccusage daily`, `ccusage session`)
[ -x /opt/node22/bin/npm ] && PATH="/opt/node22/bin:$PATH"
command -v ccusage >/dev/null 2>&1 || npm install -g ccusage@20.0.48 --no-audit --no-fund >/dev/null 2>&1 || true

# 2. Kullanıcı settings.json'a rtk PreToolUse hook'u (varsa birleştir)
mkdir -p "$HOME/.claude"
python3 - <<'EOF' || true
import json, os
p = os.path.expanduser("~/.claude/settings.json")
try:
    s = json.load(open(p))
except Exception:
    s = {}
cmd = 'R=$(command -v rtk || echo "$HOME/.local/bin/rtk"); [ -x "$R" ] && exec "$R" hook claude; exit 0'
pre = s.setdefault("hooks", {}).setdefault("PreToolUse", [])
if not any("hook claude" in h.get("command", "") for e in pre for h in e.get("hooks", [])):
    pre.append({"matcher": "Bash", "hooks": [{"type": "command", "command": cmd}]})
json.dump(s, open(p, "w"), indent=2)
EOF

# 3. caveman skill'i (Apache-2.0, sabit commit)
mkdir -p "$HOME/.claude/skills/caveman"
for f in SKILL.md; do
  curl -fsSL "https://raw.githubusercontent.com/JuliusBrussee/caveman/$CAVEMAN_COMMIT/skills/caveman/$f" \
    -o "$HOME/.claude/skills/caveman/$f" || true
done
curl -fsSL "https://raw.githubusercontent.com/JuliusBrussee/caveman/$CAVEMAN_COMMIT/LICENSE" \
  -o "$HOME/.claude/skills/caveman/LICENSE" || true

# 4. Genel token kuralları (drona23/claude-token-efficient uyarlaması, MIT)
if ! grep -q "Token verimliliği" "$HOME/.claude/CLAUDE.md" 2>/dev/null; then
  cat >> "$HOME/.claude/CLAUDE.md" <<'EOF'

## Token verimliliği
- Dosyayı bir kez oku; değişmedikçe yeniden okuma. 100 KB üstü dosyayı offset/limit ile parça parça oku.
- Yanıtta giriş/kapanış dolgusu, soruyu tekrar etme ve gereksiz özet yok.
- Sürüm, bayrak, API adı tahmin edilmez; okunarak doğrulanır.
- Tam dosyayı yeniden yazmak yerine hedefli düzenleme yap.
- Kısa yanıt için /caveman açılabilir (kod, belge, commit metnine uygulanmaz).
EOF
fi
exit 0
