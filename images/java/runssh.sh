IMAGE_NAME=ck_java:java
CONT_NAME=java

docker run \
    -d \
    --name $CONT_NAME \
    -h $CONT_NAME \
    -p 1022:22 \
    $IMAGE_NAME

