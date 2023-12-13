#!/bin/sh

docker build -t helios-nginx:latest .
docker save -o helios-nginx.tar helios-nginx:latest