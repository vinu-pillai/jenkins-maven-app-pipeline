#!/bin/bash

echo "******************************************"
echo "******* Building The jar - By Vinu! ******"
echo "******************************************"

WORKSPACE=/home/ubuntu/master_jenkins/jenkins/pipeline

docker run --rm  -v  $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3.8.1-openjdk-17-slim "$@"
