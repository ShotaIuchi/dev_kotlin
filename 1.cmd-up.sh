#!/bin/bash

CONTAINER_BASE_NAME="dev_space"

HOST_UID=$(id -u)
HOST_GID=$(id -g)

echo "base name: $CONTAINER_BASE_NAME"
echo "host uid: $HOST_UID"
echo "host gid: $HOST_GID"

export CONTAINER_BASE_NAME
export HOST_UID HOST_GID

mkdir -p work

docker compose build
docker compose up -d
