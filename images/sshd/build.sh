IMAGE_NAME=ck_base:sshd

#docker rmi $IMAGE_NAME
docker build -t $IMAGE_NAME .
