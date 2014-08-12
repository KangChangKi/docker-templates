IMAGE_NAME=ck_java:spark
CONT_NAME=spark_master

docker run \
    -d \
    --name $CONT_NAME \
    -h $CONT_NAME \
    -p 1022:22 \
    -p 8080:8080 \
    -p 4040:4040 \
    -p 18080:18080 \
    -p 8081:8081 \
    -p 7077:7077 \
    $IMAGE_NAME /usr/local/spark/sbin/start-master.sh

