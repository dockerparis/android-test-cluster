#!/bin/sh

cd /src &&
    bundle install &&
    rails server

echo "exited with code $?"
