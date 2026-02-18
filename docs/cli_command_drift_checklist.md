# CLI Command Drift Checklist — Phase 0A Guardrail

Purpose:
Prevent incorrect assumptions about CLI subcommands, flags, or behavior due to version drift.

This checklist MUST be executed the first time a CLI tool is used in a new macro-phase or on a new machine.

------------------------------------------------------------
MANDATORY STEPS
------------------------------------------------------------

1) Capture CLI Version
   - Run: `<cli> version`
   - Log to evidence path.

2) Capture Full Help Map
   - Run: `<cli> --help`
   - Run: `<cli> <primary-noun> --help` (e.g., services, organizations, instances)
   - Log to evidence path.

3) Do NOT Assume Subcommands
   - Never assume commands like `whoami`, `region`, `instance-type` exist.
   - Always verify from `--help` output.

4) Evidence Capture Required
   - Store output in:
     evidence/node1_phase0a_<cli>_cli_help_<timestamp>.log

5) Only After Verification:
   - Proceed to login
   - Proceed to read-only inspection
   - Proceed to create/update resources

------------------------------------------------------------
Rationale:
CLI vendors change commands frequently.
Drift creates false negatives and misdiagnosed blockers.
We eliminate that class of error here.
------------------------------------------------------------
