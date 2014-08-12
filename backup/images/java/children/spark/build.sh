IMAGE_NAME=ck_java:spark

#docker rmi $IMAGE_NAME
docker build -t $IMAGE_NAME .
