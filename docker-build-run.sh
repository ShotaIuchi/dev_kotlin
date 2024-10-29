#!/bin/bash

CONTAINER_NAME="dev_kotlin_springboot"
HOST_PORT=8888

UID=$(id -u)
GID=$(id -g)

echo "container name: $CONTAINER_NAME"
echo "host uid: $UID"
echo "host gid: $GID"

export CONTAINER_NAME
export HOST_PORT
export UID GID

mkdir -p work

docker compose build
docker compose up -d
