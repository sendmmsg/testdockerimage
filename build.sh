#!/usr/bin/env sh
echo $CR_PAT | docker login ghcr.io -u sendmmsg --password-stdin
docker build -t ghcr.io/sendmmsg/testimage:latest .
docker push ghcr.io/sendmmsg/testimage:latest
