#!/bin/bash
set -e
. activate RoboND
if [ -z "$1" ]
  then
    jupyter notebook --allow-root 
elif [ "$1" == *".ipynb"* ]
  then
    jupyter notebook --allow-root "$1"
else
    exec "$@"
fi
