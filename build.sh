#!/usr/bin/env bash
set -e

docker pull packs/v3:run
docker tag packs/v3:run projectriff/jvmfunv3:run

docker build -t projectriff/jvmfunv3:detect -f Dockerfile.detect .
docker build -t projectriff/jvmfunv3:build -f Dockerfile.build .

echo ./pack build [IMAGENAME] --detect-image projectriff/jvmfunv3:detect
