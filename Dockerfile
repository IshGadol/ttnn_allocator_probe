ARG BASE_IMAGE=ghcr.io/tenstorrent/tt-metal/tt-metalium-ubuntu-22.04-release-amd64:latest-rc
FROM ${BASE_IMAGE}

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 python3-pip python3-venv \
    git ca-certificates curl \
 && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /workdir
COPY repro/ /workdir/repro/
COPY docker/lab_entrypoint.sh /lab_entrypoint.sh
ENTRYPOINT ["/lab_entrypoint.sh"]
