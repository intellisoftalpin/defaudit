#!/usr/bin/env sh

set -e

ENV_FILE="${ENV_FILE:-.env}"

compose_cmd() {
   if docker compose version >/dev/null 2>&1; then
      echo "docker compose"
   elif command -v docker-compose >/dev/null 2>&1; then
      echo "docker-compose"
   else
   echo "ERROR: docker compose not found. Install docker compose command (v2 plugin preferred)."
   exit 1
   fi
}

mkdir -p ./data ./ssh_keys

if [[ ! -f "$ENV_FILE" && -f ".env.local" ]]; then
  cp .env.local "$ENV_FILE"
  echo "Created $ENV_FILE from .env.local (edit if needed)."
fi

COMPOSE="$(compose_cmd)"

$COMPOSE --env-file "$ENV_FILE" pull
$COMPOSE --env-file "$ENV_FILE" up -d

echo "Done. Status:"
$COMPOSE --env-file "$ENV_FILE" ps
