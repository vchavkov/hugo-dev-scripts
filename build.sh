#!/bin/bash
source .config.sh
source .config-prod.sh
# --baseURL=${FQDN}
docker run --rm -i \
  -v $(pwd):/src \
  ${DOCKER_IMAGE_TAG}

