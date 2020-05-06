#!/bin/bash
# sqlite3
# .open DB.db
# CREATE TABLE DOCKER(id INTEGER PRIMARY KEY AUTOINCREMENT,command VARCHAR(50),description VARCHAR(50));
sqlite3 DB.db "INSERT INTO DOCKER (command,description) VALUES('docker build [OPTIONS] PATH | URL | -','Build an image from a Dockerfile');"
sqlite3 DB.db "INSERT INTO DOCKER (command,description) VALUES('docker image ls [OPTIONS] [REPOSITORY[:TAG]]', 'List images');"
sqlite3 DB.db "INSERT INTO DOCKER (command,description) VALUES('docker start [OPTIONS] CONTAINER [CONTAINER...]','Start one or more stopped containers');"
sqlite3 DB.db "INSERT INTO DOCKER (command,description) VALUES('docker container ls [OPTIONS]', 'List containers');"
sqlite3 DB.db "INSERT INTO DOCKER (command,description) VALUES('docker stop [OPTIONS] CONTAINER [CONTAINER...]','Stop one or more running containers');"
sqlite3 DB.db "INSERT INTO DOCKER (command,description) VALUES('docker rm [OPTIONS] CONTAINER [CONTAINER...]','Remove one or more containers');"
sqlite3 DB.db "INSERT INTO DOCKER (command,description) VALUES('docker image rm [OPTIONS] IMAGE [IMAGE...]','Remove one or more images');"
sqlite3 DB.db "INSERT INTO DOCKER (command,description) VALUES('docker network create [OPTIONS] NETWORK', 'Create a network');"
sqlite3 DB.db "INSERT INTO DOCKER (command,description) VALUES('docker network connect [OPTIONS] NETWORK CONTAINER','Connect a container to a network');"
sqlite3 DB.db "INSERT INTO DOCKER (command,description) VALUES('docker network rm NETWORK [NETWORK...]', 'Remove one or more networks');"
sqlite3 DB.db "INSERT INTO DOCKER (command,description) VALUES('docker-compose up', 'Build and run your app with Compose');"
sqlite3 DB.db "INSERT INTO DOCKER (command,description) VALUES('docker stop \$(docker ps -a -q)', 'Stop all of Docker containers');"
sqlite3 DB.db "INSERT INTO DOCKER (command,description) VALUES('docker rm \$(docker ps -a -q)', 'Remove all of Docker containers');"
sqlite3 DB.db "INSERT INTO DOCKER (command,description) VALUES('docker rmi -f \$(docker images -a -q)', 'Remove all of Docker images');"