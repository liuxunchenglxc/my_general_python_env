FROM python:3.13

RUN DEBIAN_FRONTEND=noninteractive apt update && apt install -y \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir requests xmltodict youtube-transcript-api

WORKDIR /workspace
