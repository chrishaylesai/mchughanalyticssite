#\!/usr/bin/env bash
set -euo pipefail

IMAGE="chrishaylesai/mchughanalytics:latest"
PORT=8080

echo "Starting ${IMAGE} on http://localhost:${PORT} ..."

docker run --rm \
  -p "${PORT}:80" \
  --name mchughanalytics \
  "${IMAGE}"
