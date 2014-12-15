#!/bin/bash

echo "$1"
echo "$2"

echo "n" | android create avd -n "$1" -t "$2" -b x86

Xvfb -screen 0 1080x1920x24 &

export DISPLAY=:0.0

x11vnc -nopw &
start-emulator "$1" "./gradlew connectedAndroidTest"
