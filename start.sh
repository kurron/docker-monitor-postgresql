#!/bin/bash

# Use host networking to avoid having to map every hostname needed for the simulation 
docker run --detach=true --name=postgresql-service --net=host --publish=8400:8400 kurron/monitor-postgresql:latest 
docker logs --follow=true --tail=all postgresql-service 
