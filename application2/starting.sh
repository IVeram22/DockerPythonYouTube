#!/bin/bash
echo "Docker Container 'web_docker_app2' container was starting."
echo "* Running on http://0.0.0.0:5000/ "
docker run --rm --name web_docker_app2 -d -p 5000:5000 docker_app2