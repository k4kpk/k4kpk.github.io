#!/bin/bash
container=$(basename $(pwd))
docker exec -it $container bash -il
