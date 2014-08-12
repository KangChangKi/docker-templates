IMAGE_NAME=ck_java:base
CONT_NAME=java

docker run \
    -it \
    --rm \
    --name $CONT_NAME \
    -h $CONT_NAME \
    $IMAGE_NAME /bin/bash

