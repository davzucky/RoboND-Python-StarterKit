#!/usr/bin/env bash

BASEDIR=$(pwd)

docker run -it -v $BASEDIR:/workdir -w /workdir -p 8888:8888 robo-nd ./run.sh
