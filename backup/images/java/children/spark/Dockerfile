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
# Create spark-env.sh

WORKDIR /usr/local/spark/conf
RUN cp spark-env.sh.template spark-env.sh
RUN cat /work/custom_spark/spark-env.sh >> spark-env.sh 

###############
# Working Directory

WORKDIR /work

###############
# Inter-Container Communications


# RUN echo "nameserver $CONSUL_SERVER_IP:3900" >> /etc/resolv.conf


# spark master, spark master web ui, spark slave web ui, spark slave akka remoting, spark master -> slave heartbeat
EXPOSE 7077 8080 8081 47752 5000
