#!/bin/bash

# You can run this shell scrict directly in your VM to automate the build and Run process
# $ vi automated.sh and copy the contents of this file
# Run the script: $ ./automated.sh  (NOTE: automated.sh file must have permission -rwxrw-r-- (764). If it doesn't run $ chmod 764 automated.sh)

git clone https://github.com/rbnhd/ask-out-crush.git &&

cd ask-out-crush &&

IMAGE=date_request
TAG=v1
docker build -t $IMAGE:$TAG . &&

SERVICENAME=date_request
PORTONHOST=80
NGINXPORT=80
docker run --rm --name $SERVICENAME -d -p $PORTONHOST:$NGINXPORT $IMAGE:$TAG