#!/bin/bash
if [ -z ${1+x} ]; 
  then 
    echo "Name of container image is required";
    exit 0; 
fi
docker ps
docker exec -it $(docker ps | grep $1 | head -c4) bash

