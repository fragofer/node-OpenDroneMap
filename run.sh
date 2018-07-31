#!/bin/bash

__dirname=$(dirname $(cd $(dirname "$0"); pwd -P))
RUNPATH=${__dirname}/OpenDroneMap
export PYTHONPATH=$RUNPATH/SuperBuild/install/lib/python2.7/dist-packages:$RUNPATH/SuperBuild/src/opensfm:$PYTHONPATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$RUNPATH/SuperBuild/install/lib

node index.js --port 3000 --odm_path $RUNPATH 

