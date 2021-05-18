#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth produser@172.31.32.234:/tmp/.auth
scp -i /opt/prod 04_deploy_publish produser@172.31.32.234:/tmp/publish
ssh -i /opt/prod produser@172.31.32.234 "/tmp/publish"
