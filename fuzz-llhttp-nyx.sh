#!/bin/bash

rid=$1
suffix=""

if [ ! -z $rid ]; then
    suffix=-$rid
fi

afl-fuzz -D -i /src/seeds/llhttp/ -o /src/outputs/out-llhttp-aflpp-nyx$suffix/ -X -- /src/build/llhttp-nyx/
