#!/bin/sh

set -e # fail fast
set -x # print commands

apk update && apk add bash

cd resource-carts
./test/test.sh unit.py
