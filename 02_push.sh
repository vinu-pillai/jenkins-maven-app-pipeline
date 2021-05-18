#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u pillaivinu -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG pillaivinu/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push pillaivinu/$IMAGE:$BUILD_TAG
