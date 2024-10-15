#!/bin/sh

docker compose -f ./BDD/docker-compose.yml up -d
docker compose -f ./endlessh/docker-compose.yml up -d
docker compose -f ./jellyfin/docker-compose.yml up -d
docker compose -f ./memos/docker-compose.yml up -d
docker compose -f ./monitoring/docker-compose.yml up -d
docker compose -f ./nginx-proxy-manager/docker-compose.yml up -d
docker compose -f ./portainer/docker-compose.yml up -d
docker compose -f ./transmission/docker-compose.yml up -d
docker compose -f ./umami/docker-compose.yml up -d
