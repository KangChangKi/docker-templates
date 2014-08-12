IMAGE_NAME=ck_base:sshd
CONT_NAME=base_sshd2

docker run \
    -it \
    --rm \
    --name $CONT_NAME \
    -h $CONT_NAME \
    --link base_sshd:base_sshd \
    $IMAGE_NAME /bin/bash

