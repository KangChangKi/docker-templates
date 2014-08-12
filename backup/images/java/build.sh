IMAGE_NAME=ck_java:base

#docker rmi $IMAGE_NAME
docker build -t $IMAGE_NAME .
