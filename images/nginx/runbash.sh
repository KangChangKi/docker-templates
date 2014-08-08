REPO_NAME=nginx
IMAGE_NAME=some-nginx
COMMAND=/bin/bash

docker run -it --rm --name $IMAGE_NAME $REPO_NAME $COMMAND
