#!/bin/sh

docker compose -f ./BDD/compose.yml up -d
docker compose -f ./endlessh/compose.yml up -d
docker compose -f ./jellyfin/compose.yml up -d
docker compose -f ./memos/compose.yml up -d
docker compose -f ./monitoring/compose.yml up -d
docker compose -f ./nginx-proxy-manager/compose.yml up -d
docker compose -f ./portainer/compose.yml up -d
docker compose -f ./transmission/compose.yml up -d
docker compose -f ./umami/compose.yml up -d
