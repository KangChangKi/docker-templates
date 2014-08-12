IMAGE_NAME=ck_java:spark
CONT_NAME=spark_slave1

docker run \
    -it \
    --rm \
    -p 331:22 \
    -p 5000 \
    -p 8081 \
    -p 8301 \
    -p 8300 \
    -p 8600 \
    --link spark_master:spark_master \
    --name $CONT_NAME \
    -h $CONT_NAME \
    --dns=8.8.8.8 \
    --dns=4.4.4.4 \
    --dns=spark_master:8600 \
    $IMAGE_NAME /bin/bash

