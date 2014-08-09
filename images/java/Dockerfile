# Java, Scala
# Groovy, Grails, Gradle
# Spark

FROM debian:jessie
MAINTAINER ChangKi.Kang

###############
# Common Installations

RUN apt-get update && apt-get install -y \
    openssh-server \
    tar unzip \
    wget curl \
    nmap \
    emacs24-nox info \
    git

###############
# Before Installations

WORKDIR /usr/local/lib

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
    ln -s /usr/local/lib lib && \
    ln -s /usr/local/lib/spark/sbin sbin && \
    ln -s /usr/local/lib/spark/conf conf

###############
# Inter-Container Communication

EXPOSE 22

###############
# Ready for SSH Server

RUN mkdir /var/run/sshd
RUN echo 'root:screencast' | chpasswd

