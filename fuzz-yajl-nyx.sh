#!/bin/bash

rid=$1
suffix=""

if [ ! -z $rid ]; then
    suffix=-$rid
fi

afl-fuzz -D -i /src/seeds/yajl/ -o /src/outputs/out-yajl-aflpp-nyx$suffix/ -X -- /src/build/yajl-nyx/
