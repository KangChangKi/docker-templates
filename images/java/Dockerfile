# ck_java:java < ck_base:base

FROM     ck_base:base
MAINTAINER ChangKi.Kang

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
# Custom Directory

ADD ./custom /custom/java
RUN echo ". /custom/java/bashrc" >> /.bashrc

###############
# Groovy

ENV GROOVY_VER 2.3.6
ENV GRAILS_VER 2.4.3
ENV GRADLE_VER 2.0

# this should be the last
RUN curl -s get.gvmtool.net | bash
