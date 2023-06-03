#!/bin/bash

rid=$1
suffix=""

if [ ! -z $rid ]; then
    suffix=-$rid
fi

afl-fuzz -D -i /src/seeds/expat/ -o /src/outputs/out-expat-aflpp-nyx$suffix/ -X -- /src/build/expat-nyx/
