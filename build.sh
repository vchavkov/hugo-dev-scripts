#!/bin/bash
source .config.sh
source .config-prod.sh

## clean
sudo rm -rf public/*

CMD="docker run \
-v $(pwd):/src \
${DOCKER_IMAGE} \
--baseURL=${FQDN}"
printf "\n$CMD\n\n"
eval "$CMD"
