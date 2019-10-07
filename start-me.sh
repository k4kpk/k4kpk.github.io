#!/bin/bash  
container=$(basename $(pwd))

docker-compose up --detach
echo "started $container"
