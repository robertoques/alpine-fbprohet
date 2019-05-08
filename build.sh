#/bin/bash

USER=diazr
IMAGE=alpine-fbprophet
TAG=test

sudo docker build --rm --force-rm --compress -f Dockerfile -t ${USER}/${IMAGE}:${TAG} --no-cache --pull .

if [ $? -ne 0 ]; then
      echo "[-] Error al construir la inagen "
      exit 1;
fi

sudo docker login --username=${USER}

if [ $? -ne 0 ]; then
      echo "[-] Error al logear "
      exit 1;
fi

sudo docker push ${USER}/${IMAGE}:${TAG}

if [ $? -ne 0 ]; then
      echo "[-] Error al pushear "
      exit 1;
fi
