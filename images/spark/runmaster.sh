IMAGE_NAME=ck_java:spark
CONT_NAME=spark

docker run \
    -d \
    --name $CONT_NAME \
    -h $CONT_NAME \
    -p 1022:22 \
    $IMAGE_NAME /usr/local/spark/sbin/start-master.sh

