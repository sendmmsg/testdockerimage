#!/usr/bin/env sh
docker build -t sendmmsg/myvolume .
id=$(docker create sendmmsg/myvolume)
docker cp $id:/opt/deploy .
