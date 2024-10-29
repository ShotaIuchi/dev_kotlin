#!/bin/bash

CONTAINER_NAME="dev_kotlin"

UID=$(id -u)
GID=$(id -g)

echo "container name: $CONTAINER_NAME"
echo "host uid: $UID"
echo "host gid: $GID"

export CONTAINER_NAME
export UID GID

mkdir -p work

docker compose build
docker compose up -d
