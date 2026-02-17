#!/usr/bin/env bash
set -euo pipefail

# Phase 0A placeholder runner.
# Later micro-phases will add:
# - docker build/run wiring
# - TTNN import checks
# - allocator probe execution and evidence logging

echo "ttnn_allocator_probe: Phase 0A placeholder (no container run yet)."
python3 -u src/probe.py
