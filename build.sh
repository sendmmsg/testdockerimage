#!/usr/bin/env sh
echo $CR_PAT | docker login ghcr.io -u sendmmsg --password-stdin
docker build -t sendmmsg/myvolume .
id=$(docker create sendmmsg/myvolume)
docker cp $id:/opt/deploy .
