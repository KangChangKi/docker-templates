# docker run -p 0.0.0.0:3000:3000 --name testweb -ti --rm centos bash

# docker run -p 3000:3000 --name testweb -ti --rm testweb bash

# docker run -p 3000:3000 --name testweb -ti --rm --expose 3000 testweb bash

docker run -p 3000:3000 --name testweb2 -t -i --rm testweb2 bash