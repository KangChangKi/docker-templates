# docker run -p 3000:3000 --name testweb2 -it --rm -v /Users/naver/docker-templates/workdir:/workdir testweb2 bash
# docker run -p 3000:3000 --name testweb-1 -it --rm testweb bash
docker run \
-p 3000:3000 \
--name testweb-1 \
-it \
--rm \
--env-file=setting/env-web \
testweb \
bash
