#!/bin/bash
docker stop docker_application2_1
docker rm docker_application2_1
docker stop docker_application_1
docker rm docker_application_1
docker rmi $(docker images -a -q)
docker-compose up
