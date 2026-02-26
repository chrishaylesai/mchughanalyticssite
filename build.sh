#!/usr/bin/env bash
set -euo pipefail

VERSION=$(node -p "require('./package.json').version")
IMAGE="chrishaylesai/mchughanalytics"

echo "Building ${IMAGE}:${VERSION}..."
docker build -t "${IMAGE}:${VERSION}" -t "${IMAGE}:latest" .

echo "Pushing ${IMAGE}:${VERSION}..."
docker push "${IMAGE}:${VERSION}"
docker push "${IMAGE}:latest"

echo "Done. Pushed ${IMAGE}:${VERSION} and ${IMAGE}:latest"
