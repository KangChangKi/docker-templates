# ck_base:sshd

FROM ck_base:base
MAINTAINER ChangKi.Kang

###############
# Common Installations

# delete not necessary packages later in the other Dockerfile.
RUN apt-get update && apt-get install -y \
    openssh-server

RUN mkdir /var/run/sshd
RUN echo 'root:screencast' | chpasswd

###############
# Custom Directory

ADD ./custom /custom/sshd
RUN echo ". /custom/sshd/bashrc" >> /.bashrc

WORKDIR /work
