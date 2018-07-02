#!/bin/bash

rm -rf ranks.csv

$SPARK_HOME/bin/spark-submit \
  --class "FinGraphServerDebug" \
  --master "local[*]" \
  --packages "graphframes:graphframes:0.5.0-spark2.1-s_2.11" \
  ./build/libs/fingraph-0.0.1-all.jar 1
