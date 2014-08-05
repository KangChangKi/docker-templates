FROM centos
MAINTAINER Kang Chang Ki

# install packages
RUN yum -y install nginx git wget tar
RUN yum -y install emacs-nox # removable

# install packages from web
RUN wget http://nodejs.org/dist/v0.10.30/node-v0.10.30-linux-x64.tar.gz
RUN tar xfvz node-v0.10.30-linux-x64.tar.gz
RUN ln -s node-v0.10.30-linux-x64 node

# download docker-template files
RUN git clone https://github.com/KangChangKi/docker-templates.git /docker-templates

# setup .bashrc
RUN cat /docker-templates/setting/bashrc >> ~/.bashrc

# main
CMD /node/bin/node /docker-templates/workdir/hello.js
