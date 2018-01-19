#!/bin/sh

set -e # fail fast
set -x # print commands

#apk update && apk add bash
#apt-get -yqq install docker.io

RUN apt-get update && apt-get install -y sudo && rm -rf /var/lib/apt/lists/*

cd resource-carts
./test/test.sh unit.py
