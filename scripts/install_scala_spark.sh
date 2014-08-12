

SCALA_VER=2.11.2
SPARK_VER=1.0.2
SPARK_DIST_TYPE=hadoop2

cd /usr/local

wget http://downloads.typesafe.com/scala/2.11.2/scala-$SCALA_VER.tgz && \
    tar xfvz scala-$SCALA_VER.tgz && \
    ln -s scala-$SCALA_VER scala && \
    rm -f scala-$SCALA_VER.tgz

wget http://apache.mirror.cdnetworks.com/spark/spark-$SPARK_VER/spark-$SPARK_VER-bin-$SPARK_DIST_TYPE.tgz && \
    tar xfvz spark-$SPARK_VER-bin-$SPARK_DIST_TYPE.tgz && \
    ln -s spark-$SPARK_VER-bin-$SPARK_DIST_TYPE spark && \
    rm -f spark-$SPARK_VER-bin-$SPARK_DIST_TYPE.tgz

cat << EOF >> ~/.bashrc

# scala and spark 
export SCALA_HOME=/usr/local/scala
export SPARK_PREFIX=/usr/local/spark
export PATH=\$PATH:\$SCALA_HOME/bin:\$SPARK_PREFIX/bin
EOF
