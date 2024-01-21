#!/bin/bash

#build dari dockerfile
docker build -t item-app:v1 .

#melist docker images
docker images

#docker push ke docker hub
cat ../password.txt | docker login --username kudratmulya04 --password-stdin
docker tag item-app:v1 kudratmulya04/item-app:v1
docker push kudratmulya04/item-app:v1
