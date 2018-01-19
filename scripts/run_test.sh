#!/bin/sh

set -e # fail fast
set -x # print commands

#apk update && apk add bash
#apt-get -yqq install docker.io

cd resource-carts
./test/test.sh unit.py
