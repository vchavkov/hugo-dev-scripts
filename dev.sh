#!/bin/bash
source .config.sh

rm -rf public/*

docker run --rm -it \
  -v $(pwd):/src \
  -p 1313:1313 \
  ${DOCKER_IMAGE_TAG} \
  server \
  --bind=${BIND_IP_ADDRESS} \
  --baseURL=${FQDN}

