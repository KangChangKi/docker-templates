IMAGE_NAME=ck_base:base
CONT_NAME=base

docker run \
    -it \
    --rm \
    --name $CONT_NAME \
    -h $CONT_NAME \
    $IMAGE_NAME /bin/bash

