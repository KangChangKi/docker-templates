IMAGE_NAME=ck_java:java

#docker rmi $IMAGE_NAME
docker build -t $IMAGE_NAME .
