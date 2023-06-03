#!/bin/bash

rid=$1
suffix=""

if [ ! -z $rid ]; then
    suffix=-$rid
fi

afl-fuzz -D -i /src/seeds/expat/ -o /src/outputs/expat$suffix/ -- /src/build/expat/xmlwf
