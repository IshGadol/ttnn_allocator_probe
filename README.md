# ttnn_allocator_probe

Purpose: A minimal, phase-pure allocator probe repo to debug TTNN allocator behavior (especially Conv2D 3x3 / L1_SMALL) in isolation from SD14 and diffusers.

## Phase boundary
This repository is intentionally independent of:
- Stable Diffusion (SD14) code
- diffusers
- training pipelines
- performance optimization work

Current intended macro/micro phase:
- Macro: 0A — Deterministic GPU Container Bring-Up
- Micro: Phase 0A Planning — Allocator Probe Isolation

In this phase we only establish a deterministic repo skeleton + evidence capture practices.
TTNN installation, device open, and conv2 allocator tests will be added in later micro-phases.

## Repo layout
- `Dockerfile` : placeholder entrypoint Dockerfile (not final in Phase 0A)
- `docker/base.Dockerfile` : placeholder base image definition (not final in Phase 0A)
- `src/probe.py` : placeholder python probe (will later import ttnn, open_device, run a minimal conv2)
- `scripts/probe.sh` : placeholder runner script (container + local harness later)
- `evidence/` : append-only logs, command outputs, and run artifacts (paths only committed if needed)

## Evidence practice (Phase 0A)
Capture:

Policy:
- Evidence logs under `evidence/` are intentionally NOT committed to git by default (see `.gitignore`).
- Evidence is retained via canonical on-disk paths for continuity.

- `pwd`, `ls -la`, `git status -sb`
- file contents of initial placeholders (README, Dockerfile stubs)
- later: container build logs and TTNN import traces

