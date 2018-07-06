#!/bin/bash

hdfs dfs -rm -r  users-with-rank

export SPARK_HOME=/usr/hdp/2.6.0.3-8/spark
$SPARK_HOME/bin/spark-submit \
  --class "FinGraphServer" \
  --master "yarn" \
  --executor-memory 32G \
  --driver-memory 32G \
  --packages "graphframes:graphframes:0.5.0-spark1.6-s_2.11,com.databricks:spark-csv_2.10:1.5.0" \
  ./build/libs/fingraph-0.0.1-all.jar 10
