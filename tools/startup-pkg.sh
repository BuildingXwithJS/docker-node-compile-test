#!/bin/bash

docker run -d --name=pkg-test -p 3000:3000 docker-node-pkg

START_TIME=$(($(date +%s%N)/1000000))

until $(curl --output /dev/null --silent --fail http://localhost:3000); do
    printf '.'
done

CURRENT_TIME=$(($(date +%s%N)/1000000))
ELAPSED_TIME=$(($CURRENT_TIME - $START_TIME))
echo "Got response after: $ELAPSED_TIME ms"

docker kill pkg-test && docker rm pkg-test