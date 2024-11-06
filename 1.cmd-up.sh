#!/bin/bash

export CONTAINER_BASE_NAME="dev_space"

export SPRINGBOOT_HOST_PORT=8080
export DATABASE_HOST_PORT=3306

export HOST_UID=$(id -u)
export HOST_GID=$(id -g)

echo "base name: $CONTAINER_BASE_NAME"
echo "host uid: $HOST_UID"
echo "host gid: $HOST_GID"
echo "springboot port: $SPRINGBOOT_HOST_PORT"
echo "database port  : $DATABASE_HOST_PORT"

export MYSQL_ROOT_PASSWORD="root"
export MYSQL_DATABASE="dev_space"
export MYSQL_USER="dev"
export MYSQL_PASSWORD="dev"

mkdir -p work

docker compose build
docker compose up -d
