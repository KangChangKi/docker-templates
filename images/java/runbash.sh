IMAGE_NAME=ck_java:base
CONT_NAME=java

docker run -it --rm -P --name $CONT_NAME $IMAGE_NAME /bin/bash

