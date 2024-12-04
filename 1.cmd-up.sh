#!/bin/bash

export CONTAINER_BASE_NAME="dev_space"

export HOST_UID=$(id -u)
export HOST_GID=$(id -g)

source ./database/initialize.sh
source ./kotlin/initialize.sh
source ./kotlin_springboot/initialize.sh

docker compose build
docker compose up -d
