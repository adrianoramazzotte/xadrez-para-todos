#!/usr/bin/env bash
# Regenera fotos/fotos.json a partir do conteudo das pastas em fotos/.
# Uso: ./atualizar-fotos.sh   (depois: git add -A && git commit -m "fotos" && git push)
set -euo pipefail
cd "$(dirname "$0")"
python3 - <<'PY'
import json, os, re
CATS = ["mundial","pan","sulamericano","olimpiadas","brasileiros"]
EXT  = (".jpg",".jpeg",".png",".webp",".avif",".gif")
def keyf(n):
    return [int(p) if p.isdigit() else p.lower() for p in re.split(r'(\d+)', n)]
out = {}
for c in CATS:
    d = os.path.join("fotos", c)
    os.makedirs(d, exist_ok=True)
    files = sorted((f for f in os.listdir(d) if f.lower().endswith(EXT)), key=keyf)
    out[c] = files
    print(f"{c:14s} {len(files)} foto(s)")
with open(os.path.join("fotos","fotos.json"), "w", encoding="utf-8") as fh:
    json.dump(out, fh, ensure_ascii=False, indent=2)
    fh.write("\n")
print("\nfotos/fotos.json atualizado.")
PY
