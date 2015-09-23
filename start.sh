#!/bin/bash

# Use host networking to avoid having to map every hostname needed for the simulation
docker run --detach=true --name=postgresql-service --net=host --publish=8400:8400 --env=NEW_RELIC_APP_NAME=postgresql-service --env=NEW_RELIC_HOST_DISPLAY_NAME=${HOSTNAME} kurron/monitor-postgresql:latest
docker logs --follow=true --tail=25 postgresql-service
