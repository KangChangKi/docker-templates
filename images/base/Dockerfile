FROM     ubuntu:12.04
MAINTAINER ChangKi.Kang

###############
# Common Installations
# delete not necessary packages later in the other Dockerfile.
RUN apt-get update && apt-get install -y \
    openssh-server net-tools tar unzip wget \
    curl nmap git lsof telnet \
    dnsutils emacs23-nox inetutils-ping inetutils-traceroute

###############
# sshd setting
# ref: http://docs.docker.com/examples/running_ssh_service/

RUN mkdir /var/run/sshd

# change root's password later
RUN echo 'root:screencast' | chpasswd

EXPOSE 22
CMD    ["/usr/sbin/sshd", "-D"]

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

