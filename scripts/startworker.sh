

MASTER_HOSTNAME=dev-birdseye002.ncl

/usr/local/spark/bin/spark-class org.apache.spark.deploy.worker.Worker spark://$MASTER_HOSTNAME:7077
