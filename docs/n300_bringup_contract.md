# N300 Bring-Up Contract (Koyeb) — Macro 0A

This document defines the deterministic bring-up contract for running this repo on Tenstorrent N300 via Koyeb.

## Scope boundary (Macro 0A)
In Macro 0A we establish:
- container build determinism
- reproducible environment pinning strategy
- evidence capture paths + minimal verification commands

We do NOT, in this micro-phase:
- attempt allocator fixes
- port SD14
- optimize performance

## Target provider
- Provider: Koyeb
- Instance: N300 (Tenstorrent)
- Execution mode: Docker container (no buildpacks)

## Determinism rules
1. Python version is explicit (target baseline: 3.10).
2. Base image is explicit (no floating tags without digest once finalized).
3. TTNN/tt-metal versions must be pinned (exact tags/commits) once selected.
4. Every deployment attempt produces an evidence log in `evidence/` on Node1.

## Required environment variables (planned)
These will be used by `scripts/n300_bringup.sh` once active deployment is enabled:

- `KOYEB_APP` (string) : logical app/service name
- `KOYEB_REGION` (string) : deployment region
- `KOYEB_SERVICE` (string) : service name
- `KOYEB_IMAGE_TAG` (string) : container tag to deploy
- `KOYEB_DOCKERFILE` (path) : which Dockerfile to build

Optional:
- `KOYEB_ORG` (string) : org slug (if needed)
- `KOYEB_TOKEN` (string) : if not using interactive `koyeb` CLI auth

## Evidence capture (authoritative)
Each meaningful action produces an evidence log at:

`/home/david-schutt/projects/bounties/ttnn_allocator_probe/evidence/node1_phase0a_<action>_<timestamp>.log`

Examples:
- `node1_phase0a_koyeb_cli_status_<ts>.log`
- `node1_phase0a_n300_service_create_<ts>.log`
- `node1_phase0a_n300_deploy_<ts>.log`

Evidence logs are NOT committed to git by default. They are retained via canonical paths.

## Minimal verification targets (planned)
When N300 deployment is enabled, minimum success criteria are:

1. Container starts and stays running.
2. A minimal Python entrypoint runs.
3. TTNN import succeeds (later micro-phase).
4. `ttnn.open_device()` succeeds (later micro-phase).
5. Minimal Conv2D allocator probe runs (later micro-phase).

