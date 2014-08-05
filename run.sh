# docker run -p 3000:3000 --name testweb2 -it --rm -v ./workdir:/workdir testweb2
# docker run --name testweb-1 -it --rm testweb
# docker run -p 3000:3000 --name testweb-1 -it --rm testweb
docker run \
-p 3000:3000 \
--name testweb-1 \
-it \
--rm \
--env-file=setting/env-file \
testweb
