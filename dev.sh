#!/bin/bash
source .config.sh

## clean
sudo rm -rf public/*

## run
CMD="docker run \
-it \
--rm \
-v $(pwd):/src \
-p 1313:1313 \
${DOCKER_IMAGE} \
server \
--bind=${BIND_IP_ADDRESS} \
--baseURL=${FQDN}"
printf "\n$CMD\n\n"
eval "$CMD"
