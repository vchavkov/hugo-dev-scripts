#!/bin/bash
source .config.sh
source .config-prod.sh

## clean
sudo rm -rf public/*

CMD="docker run -it \
--rm \
-v $(pwd):/src \
-p 1313:1313 \
${DOCKER_IMAGE} \
--baseURL=${FQDN}"
printf "\n$CMD\n\n"
eval "$CMD"
