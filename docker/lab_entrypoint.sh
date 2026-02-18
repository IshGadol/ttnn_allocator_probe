#!/usr/bin/env bash
set -euo pipefail

echo "=== TT LAB UP ==="
date -u || true
uname -a || true
cat /etc/os-release 2>/dev/null || true

echo "=== python ==="
python3 -V || true
pip3 --version || true

echo "=== http health server :80 ==="
# Bind on 0.0.0.0:80 so Koyeb TCP health check succeeds
python3 -m http.server 80 --bind 0.0.0.0
