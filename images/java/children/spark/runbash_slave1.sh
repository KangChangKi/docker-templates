IMAGE_NAME=ck_java:spark
CONT_NAME=spark_slave1

docker run \
    -it \
    --rm \
    -p 331:22 \
    --link spark_master:spark_master \
    --name $CONT_NAME \
    $IMAGE_NAME /bin/bash

