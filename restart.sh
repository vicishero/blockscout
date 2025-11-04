#!/bin/bash
cd /opt/blockscout/docker-compose

docker-compose down

git pull

docker-compose up -d

docker cp /usr/share/nginx/html/aicchain proxy:/usr/share/nginx/html/