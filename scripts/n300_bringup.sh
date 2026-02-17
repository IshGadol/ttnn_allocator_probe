#!/usr/bin/env bash
set -euo pipefail

# ==========================================================
# Phase 0A — N300 Bring-Up Harness (Planning Mode Only)
# Target: Koyeb (N300)
# This script does NOT deploy yet.
# It defines the deterministic command surface and evidence paths.
# ==========================================================

MODE="planning"
TIMESTAMP="$(date -u +%Y%m%dT%H%M%SZ)"
EVIDENCE_DIR="/home/david-schutt/projects/bounties/ttnn_allocator_probe/evidence"
EVIDENCE_FILE="${EVIDENCE_DIR}/node1_phase0a_n300_planning_${TIMESTAMP}.log"

echo "=== N300 Bring-Up Harness ==="
echo "MODE=${MODE}"
echo "TIMESTAMP=${TIMESTAMP}"
echo "EVIDENCE_FILE=${EVIDENCE_FILE}"
echo

echo "Expected environment variables (not enforced in planning mode):"
echo "  KOYEB_APP"
echo "  KOYEB_REGION"
echo "  KOYEB_SERVICE"
echo "  KOYEB_IMAGE_TAG"
echo "  KOYEB_DOCKERFILE"
echo

echo "Phase 0A planning mode: no Koyeb CLI calls will be executed."
echo "This script will later:"
echo "  - build image"
echo "  - push image (if required)"
echo "  - create/update Koyeb service"
echo "  - capture all output to canonical evidence path"
echo

echo "Planning complete."
exit 0
