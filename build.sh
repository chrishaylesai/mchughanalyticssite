#!/usr/bin/env bash
set -euo pipefail

VERSION=$(node -p "require('./package.json').version")
IMAGE="chrishaylesai/mchughanalytics"

echo "Building ${IMAGE}:${VERSION}-amd64..."
docker build -t "${IMAGE}:${VERSION}-amd64" .

echo "Pushing ${IMAGE}:${VERSION}-amd64..."
docker push "${IMAGE}:${VERSION}-amd64"

echo "Done. Pushed ${IMAGE}:${VERSION}-amd64"
