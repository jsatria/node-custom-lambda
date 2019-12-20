#!/bin/sh

. ./config.sh

docker build --build-arg NODE_VERSION -t node-provided-lambda-v8.x .
docker run --rm -v "$PWD":/app node-provided-lambda-v8.x cp /tmp/layer.zip /app/
