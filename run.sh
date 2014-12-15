#!/bin/sh

echo $(pwd)/webapp > webapp/PWD
docker run -v $(readlink -f /var/run/docker.sock):$(readlink -f /var/run/docker.sock) -d android-cluster-ui
