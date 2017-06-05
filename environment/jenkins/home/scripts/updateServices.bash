#!/bin/bash

DOCKER_HOST=$1
IMAGE=$2

SERVICES=`docker -H $DOCKER_HOST service ls | grep "$IMAGE" | awk '{ print $2; }'`
UPDATE_SERVICE_COUNT=0

for SERVICE in $SERVICES; do
  echo "UPDATING SERVICE $SERVICE..."
  docker -H $DOCKER_HOST service update --force --image $IMAGE $SERVICE
  echo "$SERVICE UPDATED!"
  UPDATE_SERVICE_COUNT=`echo $UPDATE_SERVICE_COUNT + 1 | bc`
done

echo "$UPDATE_SERVICE_COUNT SERVICE(S) UPDATED!"
