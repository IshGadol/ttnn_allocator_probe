#!/usr/bin/env bash
set -euo pipefail

echo "=== TT LAB UP ==="
date -u || true
uname -a || true
cat /etc/os-release 2>/dev/null || true

echo "=== python ==="
python3 -V || true
pip3 --version || true

echo "=== env (selected) ==="
env | egrep -i 'TT_|TTNN|TORCH|DYNAMO|KOYEB' || true

echo "=== http health server :80 ==="
python3 -m http.server 80 --bind 0.0.0.0 >/tmp/http80.log 2>&1 &
echo "http.server PID=$!"

echo "=== run repro: torch.compile backend=ttnn ==="
python3 /workdir/repro/repro_conv2d_torch_compile_ttnn.py || true

echo "=== keep-alive ==="
tail -f /tmp/http80.log
