#!/bin/bash

source ./cfrc

COMPUTE_NODES=`echo $COMPUTE_NODES | sed 's/\([^[:space:]]*\)[[:space:]]*/"\1", /g'`

sed -i -e "s/\"%COMPUTE_NODES%\"/$COMPUTE_NODES/g" \
       -e "s/%SERVER_HOST%/$SERVER_HOST/g" promises/promises.cf

mkdir promises/config_files
