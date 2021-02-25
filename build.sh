#!/bin/bash
source .config.sh
source .config-prod.sh
docker run --rm -i \
  -v $(pwd):/src \
  --baseURL=${FQDN} \
  ${DOCKER_IMAGE_TAG}

