IMAGE_NAME=myjessie

docker rmi $IMAGE_NAME
docker build -t $IMAGE_NAME .
