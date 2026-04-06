#!/usr/bin/env bash

set -e

ENV_FILE="${ENV_FILE:-.env}"

compose_cmd() {
   if docker compose version >/dev/null 2>&1; then
      echo "docker compose"
   elif command -v docker-compose >/dev/null 2>&1; then
      echo "docker-compose"
   else
   echo "ERROR: docker compose not found. Install docker compose command."
   exit 1
   fi
}

mkdir -p ./data ./ssh_keys

COMPOSE="$(compose_cmd)"

$COMPOSE --env-file "$ENV_FILE" pull
$COMPOSE --env-file "$ENV_FILE" up -d
