#!/bin/bash
docker network prune -f
docker network create bridge
docker network connect bridge web_docker_app2
docker network connect bridge web_docker_app
docker network inspect bridge
