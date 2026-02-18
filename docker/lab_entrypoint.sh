#!/usr/bin/env bash
set -euo pipefail

echo "=== TT LAB UP ==="
date -u || true
uname -a || true
cat /etc/os-release 2>/dev/null || true

echo "=== python ==="
python3 -V || true
pip3 --version || true

echo "=== keep-alive ==="
tail -f /dev/null
