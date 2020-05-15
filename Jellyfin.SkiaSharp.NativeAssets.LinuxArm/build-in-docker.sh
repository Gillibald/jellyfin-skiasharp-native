#!/bin/bash

docker build -t libskiasharp-linuxarm .
mkdir -p ./runtimes/linux-arm/native
mkdir -p ./runtimes/linux-arm64/native
docker run --rm -v "./runtimes/linux-arm/native:/temp" "libskiasharp-linuxarm" cp /build/ /temp/
docker run --rm -v "./runtimes/linux-arm64/native:/temp64" "libskiasharp-linuxarm" cp /build/ /temp64/