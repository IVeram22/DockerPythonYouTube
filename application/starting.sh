#!/bin/bash
echo "Docker Container 'web_docker_app' container was starting."
echo "* Running on http://0.0.0.0:8080/ "
docker run --rm --name web_docker_app -d -p 8080:8080 -v 'Absolute Path':/usr/src/app/Resources docker_app
