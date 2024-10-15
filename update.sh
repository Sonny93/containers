#!/bin/sh

docker compose -f ./BDD/compose.yml pull
docker compose -f ./endlessh/compose.yml pull
docker compose -f ./jellyfin/compose.yml pull
docker compose -f ./memos/compose.yml pull
docker compose -f ./monitoring/compose.yml pull
docker compose -f ./nginx-proxy-manager/compose.yml pull
docker compose -f ./portainer/compose.yml pull
docker compose -f ./transmission/compose.yml pull
docker compose -f ./umami/compose.yml pull
