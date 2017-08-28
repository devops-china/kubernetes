#!/usr/bin/env bash

docker build -t ihakula/idea-board -f ./Dockerfile .
docker tag ihakula/idea-board ihakula/idea-board:latest
docker login --username ihakula --password wayde191
docker push ihakula/idea-board:latest
