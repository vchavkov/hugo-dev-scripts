#!/bin/bash
source .config.sh
source .config-prod.sh
docker run --rm -i \
  -v $(pwd):/src \
  -p 1313:1313 \
  ${DOCKER_IMAGE_TAG} \
  --baseURL=${FQDN}

