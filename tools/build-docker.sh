#!/bin/bash
docker rmi docker-node-basic

START_TIME=$SECONDS

docker build -t docker-node-basic .

ELAPSED_TIME=$(($SECONDS - $START_TIME))
echo "Elapsed time: $ELAPSED_TIME s"