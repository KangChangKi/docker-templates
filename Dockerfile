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
RUN echo "" >> ~/.bashrc
RUN echo "export PATH=$PATH:/node/bin" >> ~/.bashrc
RUN echo "" >> ~/.bashrc
RUN echo "alias ls='ls -aF --color'" >> ~/.bashrc
RUN echo "alias ll='ls -al'" >> ~/.bashrc
RUN echo "alias e='emacs'" >> ~/.bashrc
RUN echo "" >> ~/.bashrc

# main
CMD /node/bin/node /docker-templates/workdir/hello.js
