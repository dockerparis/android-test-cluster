#!/bin/sh

echo "Building Android Cluster UI"
cd webapp
docker build -t android-cluster-ui .
cd ..

cd android-emulator
echo "Building Android Cluster Emulator"
docker build -t android-cluster-qemu .
cd ..
