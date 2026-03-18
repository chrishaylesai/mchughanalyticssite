#\!/usr/bin/env bash
set -euo pipefail

IMAGE="chrishaylesai/mchughanalytics"
PORT=8080
VERSION=$(node -p "require('./package.json').version")

echo "Starting ${IMAGE} on http://localhost:${PORT} ..."

docker run --rm \
  -p "${PORT}:80" \
  --name mchughanalytics \
  "${IMAGE}:${VERSION}-amd64"
