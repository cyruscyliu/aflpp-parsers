#!/bin/bash

rid=$1
suffix=""

if [ ! -z $rid ]; then
    suffix=-$rid
fi

afl-fuzz -D -i /src/seeds/yajl/ -o /src/outputs/yajl$suffix/ -- /src/build/yajl/parse
