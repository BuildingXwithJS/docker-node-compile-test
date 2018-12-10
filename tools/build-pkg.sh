#!/bin/bash
docker rmi docker-node-pkg
rm -rf ./dist

START_TIME=$SECONDS

npm run build
npm run package
docker build -f Dockerfile-pkg -t docker-node-pkg .

ELAPSED_TIME=$(($SECONDS - $START_TIME))
echo "Elapsed time: $ELAPSED_TIME s"