# ck_base:base

#FROM debian:wheezy
FROM debian:jessie
MAINTAINER ChangKi.Kang

###############
# Common Installations

# delete not necessary packages later in the other Dockerfile.
RUN apt-get update && apt-get install -y \
    openssh-server net-tools tar unzip wget \
    curl nmap git lsof telnet \
    dnsutils emacs24-nox

###############
# Custom Directory

ADD ./custom /custom/base
RUN echo ". /custom/base/bashrc" >> /.bashrc

###############
# Working Directory

RUN mkdir -p /work
WORKDIR /work
RUN ln -s /custom custom && \
    ln -s /usr/local local

WORKDIR /work
