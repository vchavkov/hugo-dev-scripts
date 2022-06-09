#!/bin/bash

source .config.sh

hugo server \
--bind=${BIND_IP_ADDRESS} \
--port=1313 \
--baseURL=${FQDN}

sudo chown 
