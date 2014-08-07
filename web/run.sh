docker run \
-p 3000:3000 \
--name web \
-it \
--rm \
--env-file=work/env \
web
