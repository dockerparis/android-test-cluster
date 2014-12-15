#!/bin/sh

UUID=$(uuid)
PWD=$(pwd)
PROJECT=$(echo "$1" | sed -e 's/ /_/g')
PROJECT_PATH=${PWD}/${PROJECT}

mkdir -p ${PROJECT_PATH}

git clone --depth=1 -q "$2" ${PROJECT_PATH}/${UUID}

echo `cat PWD`/${PROJECT}/${UUID}

docker run --privileged -v `cat PWD`/${PROJECT}/${UUID}:/src -v /opt/android-sdk:/opt/android-sdk-linux android-cluster-qemu /run.sh "$PROJECT" "$3"
