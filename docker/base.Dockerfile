# Phase 0A — Deterministic Base Image (placeholder)
# This is NOT the final image. It only establishes explicit base + Python version.

FROM python:3.10-slim

# Prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Minimal system deps
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        curl \
        ca-certificates \
        build-essential \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Phase 0A intentionally does NOT install TTNN yet.
# TTNN install + runtime binding will be validated in a later micro-phase.

CMD ["bash"]
