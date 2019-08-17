#!/bin/bash

sudo apt-get -y update
sudo apt-get -y install docker.io
sudo usermod -a -G docker $USER
docker run -d -p 80:80 -p 443:443 --env DAPYTHONVERSION=3 jhpyle/docassemble
