FROM centos
MAINTAINER Kang Chang Ki

# install packages
RUN yum -y install nginx emacs-nox git wget tar

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

# expose ports
EXPOSE 3000 8000

# main
CMD node /docker-templates/hello.js
