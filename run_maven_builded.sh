#! /usr/bin/env bash

mvn package
OUT_DIR="wordcount_out"
hdfs dfs -rm -r -skipTrash ${OUT_DIR} 2> /dev/null
yarn jar target/task207-1.0.jar ru.mipt.examples.WordCount /data/griboedov ${OUT_DIR}
