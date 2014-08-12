IMAGE_NAME=ck_base:base

#docker rmi $IMAGE_NAME
docker build -t $IMAGE_NAME .
