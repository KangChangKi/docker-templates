FROM centos
MAINTAINER Kang Chang Ki

# install packages
RUN yum -y install nginx emacs-nox git wget tar

# install packages from web
RUN wget http://nodejs.org/dist/v0.10.30/node-v0.10.30-linux-x64.tar.gz
RUN tar xfvz node-v0.10.30-linux-x64.tar.gz
RUN ln -s node-v0.10.30-linux-x64 node

# download files & run rc.sh
RUN mkdir -p /testdata
RUN cd /testdata
RUN git clone https://github.com/KangChangKi/test.git /testdata/test

# setup
RUN echo "" >> ~/.bashrc
RUN echo "export PATH=$PATH:/node/bin" >> ~/.bashrc
RUN echo "" >> ~/.bashrc
RUN echo "alias ls='ls -aF --color'" >> ~/.bashrc
RUN echo "alias ll='ls -al'" >> ~/.bashrc
RUN echo "alias e='emacs'" >> ~/.bashrc



