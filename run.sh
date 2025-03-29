#!/bin/bash

DOCKER_IMAGE=inventory_optimizer
DOCKER_CONTAINER_NAME=inventory_optimizer

DOCKER_IMAGE_NAME="$DOCKER_IMAGE"

docker rm -f $DOCKER_CONTAINER_NAME 2>/dev/null || true

docker build -t $DOCKER_IMAGE_NAME .

# Run Docker container
docker run -v $(pwd)/data:/data --name $DOCKER_CONTAINER_NAME $DOCKER_IMAGE_NAME 
