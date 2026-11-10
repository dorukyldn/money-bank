#!/usr/bin/env python3
"""Apify Store'da anahtar kelimeyle rakip Actor arar; tablo (markdown) basar.

Kullanim: python3 scripts/apify_rakip_ara.py "kap turkey" "ekap" ...
Kaynak: https://api.apify.com/v2/store (herkese acik, anahtar gerektirmez)
"""
import json, sys, urllib.parse, urllib.request

def ara(q, limit=50):
    url = "https://api.apify.com/v2/store?" + urllib.parse.urlencode({"search": q, "limit": limit})
    with urllib.request.urlopen(url, timeout=30) as r:
        return json.load(r)["data"]["items"]

def fiyat(it):
    p = it.get("currentPricingInfo") or {}
    m = p.get("pricingModel", "?")
    if m == "PAY_PER_EVENT":
        ev = (p.get("pricingPerEvent") or {}).get("actorChargeEvents") or {}
        parts = []
        for k, v in ev.items():
            if k == "apify-actor-start":
                continue
            pr = v.get("eventPriceUsd")
            if pr is None:
                pr = ((v.get("eventTieredPricingUsd") or {}).get("FREE") or {}).get("tieredEventPriceUsd")
            parts.append(f"{k}=${pr}")
        return "PPE " + ", ".join(parts[:3])
    if m == "PRICE_PER_DATASET_ITEM":
        return f"${p.get('pricePerUnitUsd')}/sonuç"
    if m == "FLAT_PRICE_PER_MONTH":
        return f"${p.get('pricePerUnitUsd')}/ay"
    return m

if __name__ == "__main__":
    seen = {}
    filt = [a.lower() for a in sys.argv[1:] if a.startswith("+")]
    for q in [a for a in sys.argv[1:] if not a.startswith("+")]:
        for it in ara(q):
            seen[f"{it['username']}/{it['name']}"] = it
    print("| Actor | Başlık | Toplam kullanıcı | 30g kullanıcı | Puan (yorum) | Fiyat | Son çalışma |")
    print("|---|---|---|---|---|---|---|")
    rows = sorted(seen.items(), key=lambda kv: -kv[1]["stats"].get("totalUsers30Days", 0))
    for k, it in rows:
        text = (it["title"] + " " + (it.get("description") or "")).lower()
        if filt and not any(f[1:] in text for f in filt):
            continue
        s = it["stats"]
        print(f"| [{k}](https://apify.com/{k}) | {it['title'][:50]} | {s.get('totalUsers',0)} | {s.get('totalUsers30Days',0)} | "
              f"{s.get('actorReviewRating',0):.1f} ({s.get('actorReviewCount',0)}) | {fiyat(it)} | {(s.get('lastRunStartedAt') or '')[:10]} |")
