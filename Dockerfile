# Phase 0A — Entry Dockerfile (placeholder)
# Must remain buildable as-written.

FROM python:3.10-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        curl \
        ca-certificates \
        build-essential \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Phase 0A intentionally does NOT install TTNN yet.
# Later micro-phases will add TTNN install + runtime binding + allocator probes.

CMD ["bash"]
