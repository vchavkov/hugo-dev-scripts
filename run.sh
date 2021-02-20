#!/bin/bash
source .config.sh
docker run -it \
  --entrypoint /bin/bash \
  --rm \
  -v $(pwd):/src \
  -p 1313:1313 \
  ${DOCKER_IMAGE_TAG}
