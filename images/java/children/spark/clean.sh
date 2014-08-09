#!/bin/bash

# delete containers 
docker ps -a | grep 'Exited ' | awk '{ system("docker rm " $1) }'

# delete images
docker images | awk '{ if ($1 == "<none>") { system("docker rmi " $3); } }'
