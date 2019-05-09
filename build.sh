#/bin/bash

USER=diazr
IMAGE=alpine-fbprophet
TAG=test-2

sudo docker build --rm --force-rm --compress -f Dockerfile -t ${USER}/${IMAGE}:${TAG} --no-cache --pull .

sudo docker login --username=${USER}

sudo docker push ${USER}/${IMAGE}:${TAG}

