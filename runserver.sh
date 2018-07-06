#!/bin/bash


$SPARK_HOME/bin/spark-submit \
  --class "FinGraphServer" \
  --master "yarn" \
  --executor-memory 8G \
  --driver-memory 8G \
  --packages "graphframes:graphframes:0.5.0-spark1.6-s_2.11,com.databricks:spark-csv_2.10:1.5.0" \
  ./build/libs/fingraph-0.0.1-all.jar 10
