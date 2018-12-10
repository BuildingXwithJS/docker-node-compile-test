#!/bin/bash
docker rmi docker-node-ncc
rm -rf ./dist

START_TIME=$SECONDS

npm run build
docker build -f Dockerfile-ncc -t docker-node-ncc .

ELAPSED_TIME=$(($SECONDS - $START_TIME))
echo "Elapsed time: $ELAPSED_TIME s"