#!/bin/sh

docker compose -f ./BDD/docker-compose.yml pull
docker compose -f ./endlessh/docker-compose.yml pull
docker compose -f ./jellyfin/docker-compose.yml pull
docker compose -f ./memos/docker-compose.yml pull
docker compose -f ./monitoring/docker-compose.yml pull
docker compose -f ./nginx-proxy-manager/docker-compose.yml pull
docker compose -f ./portainer/docker-compose.yml pull
docker compose -f ./transmission/docker-compose.yml pull
docker compose -f ./umami/docker-compose.yml pull
