# Java, Scala
# Groovy, Grails, Gradle
# Spark

#FROM debian:wheezy
FROM debian:jessie
MAINTAINER ChangKi.Kang

###############
# Common Installations 1

RUN apt-get update && apt-get install -y \
    openssh-server net-tools \
    tar unzip \
    wget curl \
    nmap \
    git

###############
# Tinc

RUN mkdir -p /etc/tinc/netname/hosts
ADD ./custom/netname /etc/tinc/netname

###############
# Before Installations

WORKDIR /usr/local

###############
# Java

ENV JAVA_VER 8u11
ENV JAVA_DIR jdk1.8.0_11

RUN wget --no-check-certificate -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/$JAVA_VER-b12/jdk-$JAVA_VER-linux-x64.tar.gz && \
    tar xfvz jdk-$JAVA_VER-linux-x64.tar.gz && \
    ln -s $JAVA_DIR jdk && \
    rm -f jdk-$JAVA_VER-linux-x64.tar.gz

###############
# Scala

ENV SCALA_VER 2.11.2

RUN wget http://downloads.typesafe.com/scala/2.11.2/scala-$SCALA_VER.tgz && \
    tar xfvz scala-$SCALA_VER.tgz && \
    ln -s scala-$SCALA_VER scala && \
    rm -f scala-$SCALA_VER.tgz

###############
# Groovy

ENV GROOVY_VER 2.3.6
ENV GRAILS_VER 2.4.3
ENV GRADLE_VER 2.0

RUN curl -s get.gvmtool.net | bash

###############
# Apache Spark

ENV SPARK_VER 1.0.2
ENV SPARK_DIST_TYPE hadoop2

#RUN wget http://apache.tt.co.kr/spark/spark-$SPARK_VER/spark-$SPARK_VER-bin-$SPARK_DIST_TYPE.tgz && \
RUN wget http://apache.mirror.cdnetworks.com/spark/spark-$SPARK_VER/spark-$SPARK_VER-bin-$SPARK_DIST_TYPE.tgz && \
    tar xfvz spark-$SPARK_VER-bin-$SPARK_DIST_TYPE.tgz && \
    ln -s spark-$SPARK_VER-bin-$SPARK_DIST_TYPE spark && \
    rm -f spark-$SPARK_VER-bin-$SPARK_DIST_TYPE.tgz

###############
# Custom Directory

ADD ./custom /custom
RUN echo ". /custom/bashrc" >> /.bashrc

###############
# Working Directory

RUN mkdir -p /work
WORKDIR /work
RUN ln -s /custom custom && \
    ln -s /usr/local local && \
    ln -s /usr/local/spark/sbin sbin && \
    ln -s /usr/local/spark/conf conf && \
    ln -s /etc/tinc/ tinc

###############
# Inter-Container Communication

EXPOSE 22

###############
# Ready for SSH Server

RUN mkdir /var/run/sshd
RUN echo 'root:screencast' | chpasswd

###############
# Common Installations 2

RUN apt-get install -y \
    emacs24-nox info \
    lsof telnet dnsutils

###############
# Install Consul

WORKDIR /usr/local

ENV CONSUL_VER 0.3.1
ENV CONSUL_SERVER_IP 10.64.144.219

RUN wget https://dl.bintray.com/mitchellh/consul/${CONSUL_VER}_linux_amd64.zip
RUN unzip ${CONSUL_VER}_linux_amd64.zip
RUN rm ${CONSUL_VER}_linux_amd64.zip
RUN ln -s /usr/local/consul /usr/local/bin/consul

RUN mkdir -p /tmp/consul
RUN mkdir -p /etc/consul.d
#RUN consul agent -server -bootstrap -data-dir /tmp/consul -config-dir /etc/consul.d
#RUN consul agent -data-dir /tmp/consul -config-dir /etc/consul.d -join ${CONSUL_SERVER_IP}

ADD ./custom/init_d_env /etc/init.d/init_d_env
RUN echo "CONSUL_SERVER_IP=${CONSUL_SERVER_IP}" >> /etc/init.d/init_d_env

ADD ./custom/consul /etc/init.d/consul
WORKDIR /etc/init.d
RUN chmod 755 /etc/init.d/consul
RUN update-rc.d consul defaults

WORKDIR /work
