#!/bin/bash

# Copy the new jar to the build location
echo "******* COPYING THE JAR FILE ********"
cp -f java-app/target/*.jar /home/ubuntu/master_jenkins/jenkins/pipeline
sleep 3

echo "****************************"
echo "** Building Docker Image ***"
echo "****************************"

cd /home/ubuntu/master_jenkins/jenkins/pipeline && docker-compose -f docker-compose-build.yml build --no-cache
