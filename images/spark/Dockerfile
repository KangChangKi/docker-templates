# ck_java:spark < ck_java:java < ck_base:base

FROM     ck_java:java
MAINTAINER ChangKi.Kang

###############
# Before Installations

WORKDIR /usr/local

###############
# Apache Spark

ENV SPARK_VER 1.0.2
ENV SPARK_DIST_TYPE hadoop2

#RUN wget http://apache.tt.co.kr/spark/spark-$SPARK_VER/spark-$SPARK_VER-bin-$SPARK_DIST_TYPE.tgz && \
RUN wget http://apache.mirror.cdnetworks.com/spark/spark-$SPARK_VER/spark-$SPARK_VER-bin-$SPARK_DIST_TYPE.tgz && \
    tar xfvz spark-$SPARK_VER-bin-$SPARK_DIST_TYPE.tgz && \
    ln -s spark-$SPARK_VER-bin-$SPARK_DIST_TYPE spark && \
    rm -f spark-$SPARK_VER-bin-$SPARK_DIST_TYPE.tgz

ADD ./custom /custom/spark
RUN echo ". /custom/spark/bashrc" >> /.bashrc

# shortcuts
ADD ./custom/runmaster.sh /work/runmaster.sh
ADD ./custom/runslave.sh /work/runslave.sh

###############
# Create spark-env.sh

WORKDIR /usr/local/spark/conf
RUN cp spark-env.sh.template spark-env.sh
RUN cat /work/custom/spark/spark-env.sh >> spark-env.sh

WORKDIR /work
RUN ln -s /usr/local/spark/sbin sbin && \
    ln -s /usr/local/spark/conf conf

###############
# Expose ports
# ref: https://spark.apache.org/docs/latest/spark-standalone.html

EXPOSE 8080 4040 18080 8081 7077 5000

