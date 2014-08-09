# Java, Scala
# Groovy, Grails, Gradle
# Spark
# --------
# Spark Configurations

FROM ck_java:base
MAINTAINER ChangKi.Kang

###############
# Change Root Password

RUN echo 'root:screencast' | chpasswd

###############
# Custom Spark Directory

ADD ./custom_spark /custom_spark
RUN echo ". /custom_spark/bashrc" >> /.bashrc
RUN ln -s /custom_spark /work/custom_spark

###############
# Working Directory

WORKDIR /work

###############
# Inter-Container Communications

# spark master, spark master web ui, spark slave web ui, spark slave akka remoting
EXPOSE 7077 8080 8081 47752
