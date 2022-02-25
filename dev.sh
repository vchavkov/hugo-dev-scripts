#!/bin/bash
source .config.sh

## clean
rm -rf dist/*

CMD="docker run -it \
--rm \
-v $(pwd):/src \
-v $(pwd)/dist:/dist \
-p 1313:1313 \
${IMAGE_TAG} \
server \
--bind=${BIND_IP_ADDRESS} \
--baseURL=${FQDN}"
printf "\n$CMD\n"
eval "$CMD"
