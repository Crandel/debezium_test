#!/usr/bin/bash

state=${1:-up}
export DEBEZIUM_VERSION=${2:-1.3}

case $state in
  up)
    docker-compose -f docker-compose.yaml up -d
    ;;
  down)
    docker-compose -f docker-compose.yaml down
    ;;
esac
