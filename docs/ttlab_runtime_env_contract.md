# TTLAB Runtime Environment Contract (Authoritative Snapshot)

Captured (UTC): 2026-02-19T13:56:24Z
Host: cosi-node1
Service: graceful-sal/tt-lab
Deployment ID: 2c290ddb-cccc-41e3-9074-a122e28b7d3e

------------------------------------------------------------
Container Image (exact reference)
------------------------------------------------------------
ghcr.io/ishgadol/ttnn_allocator_probe:tt-lab-latest

------------------------------------------------------------
Observed Runtime State (via koyeb services exec)
------------------------------------------------------------

Python Interpreter Path:
/opt/venv/bin/python3

Python Version:
Python 3.10.12

Pip Available:
NO
(import error: No module named pip)

Torch Import:
FAIL

TTNN Import:
UNKNOWN (not tested; torch import failed first)

Exact Torch Import Error:
ModuleNotFoundError: No module named 'torch'

------------------------------------------------------------
Runtime Evidence Artifact
------------------------------------------------------------
evidence/node1_ttlab_deployment_runtime_logs_2c290ddb-cccc-41e3-9074-a122e28b7d3e_20260219T135624Z.log

------------------------------------------------------------
Runtime Gate Rule
------------------------------------------------------------
Allocator or model-level debugging is prohibited
until `import torch` succeeds inside the container
via `koyeb services exec`.

If `import torch` fails, the phase reverts to
Environment Validation.
