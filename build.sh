#!/bin/bash

git submodule init
git submodule update --recursive -f

dos2unix Dockerfile
docker buildx build . -t occr-judge:$1 --load
