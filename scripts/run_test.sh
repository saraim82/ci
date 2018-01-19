#!/bin/sh

set -e # fail fast
set -x # print commands

cd resource-carts/test
./test.sh unit.py
