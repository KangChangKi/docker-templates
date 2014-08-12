IMAGE_NAME=ck_base:sshd
CONT_NAME=base_sshd

docker run \
    -it \
    --rm \
    --name $CONT_NAME \
    -h $CONT_NAME \
    -p 33:22 \
    $IMAGE_NAME /bin/bash

