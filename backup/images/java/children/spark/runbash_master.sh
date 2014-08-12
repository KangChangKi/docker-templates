IMAGE_NAME=ck_java:spark
CONT_NAME=spark_master

docker run \
    -it \
    --rm \
    -p 330:22 \
    -p 7077 \
    -p 4040:4040 \
    -p 8080:8080 \
    -p 5000 \
    -p 8301 \
    -p 8300 \
    -p 8600 \
    --name $CONT_NAME \
    -h $CONT_NAME \
    --dns=8.8.8.8 \
    --dns=4.4.4.4 \
    --dns=127.0.0.1:8600\
    --dns=10.64.144.219:8600 \
    --link spark_slave1:spark_slave1 \
    $IMAGE_NAME /bin/bash

