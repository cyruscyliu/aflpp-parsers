export AFL_NO_UI=1
timeout 86400 afl-fuzz -b 0  -D -i /src/seeds/expat/  -o /src/outputs/out-expat-aflpp-nyx-000/  -X -- /src/build/expat-nyx/   2>&1 >/src/outputs/out-expat-aflpp-nyx-000.log &
timeout 86400 afl-fuzz -b 1  -D -i /src/seeds/llhttp/ -o /src/outputs/out-llhttp-aflpp-nyx-000/ -X -- /src/build/llhttp-nyx/  2>&1 >/src/outputs/out-llhttp-aflpp-nyx-000.log &
timeout 86400 afl-fuzz -b 2  -D -i /src/seeds/yajl/   -o /src/outputs/out-yajl-aflpp-nyx-000/   -X -- /src/build/yajl-nyx/    2>&1 >/src/outputs/out-yajl-aflpp-nyx-000.log &
timeout 86400 afl-fuzz -b 3  -D -i /src/seeds/expat/  -o /src/outputs/out-expat-aflpp-000/         -- /src/build/expat/xmlwf  2>&1 >/src/outputs/out-expat-aflpp-000.log &
timeout 86400 afl-fuzz -b 4  -D -i /src/seeds/llhttp/ -o /src/outputs/out-llhttp-aflpp-000/        -- /src/build/llhttp/parse 2>&1 >/src/outputs/out-llhttp-aflpp-000.log &
timeout 86400 afl-fuzz -b 5  -D -i /src/seeds/yajl/   -o /src/outputs/out-yajl-aflpp-000/          -- /src/build/yajl/parse   2>&1 >/src/outputs/out-yajl-aflpp-000.log &

timeout 86400 afl-fuzz -b 6  -D -i /src/seeds/expat/  -o /src/outputs/out-expat-aflpp-nyx-001/  -X -- /src/build/expat-nyx/   2>&1 >/src/outputs/out-expat-aflpp-nyx-001.log &
timeout 86400 afl-fuzz -b 7  -D -i /src/seeds/llhttp/ -o /src/outputs/out-llhttp-aflpp-nyx-001/ -X -- /src/build/llhttp-nyx/  2>&1 >/src/outputs/out-llhttp-aflpp-nyx-001.log &
timeout 86400 afl-fuzz -b 8  -D -i /src/seeds/yajl/   -o /src/outputs/out-yajl-aflpp-nyx-001/   -X -- /src/build/yajl-nyx/    2>&1 >/src/outputs/out-yajl-aflpp-nyx-001.log &
timeout 86400 afl-fuzz -b 9  -D -i /src/seeds/expat/  -o /src/outputs/out-expat-aflpp-001/         -- /src/build/expat/xmlwf  2>&1 >/src/outputs/out-expat-aflpp-001.log &
timeout 86400 afl-fuzz -b 10 -D -i /src/seeds/llhttp/ -o /src/outputs/out-llhttp-aflpp-001/        -- /src/build/llhttp/parse 2>&1 >/src/outputs/out-llhttp-aflpp-001.log &
timeout 86400 afl-fuzz -b 11 -D -i /src/seeds/yajl/   -o /src/outputs/out-yajl-aflpp-001/          -- /src/build/yajl/parse   2>&1 >/src/outputs/out-yajl-aflpp-001.log &

timeout 86400 afl-fuzz -b 12 -D -i /src/seeds/expat/  -o /src/outputs/out-expat-aflpp-nyx-002/  -X -- /src/build/expat-nyx/   2>&1 >/src/outputs/out-expat-aflpp-nyx-002.log &
timeout 86400 afl-fuzz -b 13 -D -i /src/seeds/llhttp/ -o /src/outputs/out-llhttp-aflpp-nyx-002/ -X -- /src/build/llhttp-nyx/  2>&1 >/src/outputs/out-llhttp-aflpp-nyx-002.log &
timeout 86400 afl-fuzz -b 14 -D -i /src/seeds/yajl/   -o /src/outputs/out-yajl-aflpp-nyx-002/   -X -- /src/build/yajl-nyx/    2>&1 >/src/outputs/out-yajl-aflpp-nyx-002.log &
timeout 86400 afl-fuzz -b 15 -D -i /src/seeds/expat/  -o /src/outputs/out-expat-aflpp-002/         -- /src/build/expat/xmlwf  2>&1 >/src/outputs/out-expat-aflpp-002.log &
timeout 86400 afl-fuzz -b 16 -D -i /src/seeds/llhttp/ -o /src/outputs/out-llhttp-aflpp-002/        -- /src/build/llhttp/parse 2>&1 >/src/outputs/out-llhttp-aflpp-002.log &
timeout 86400 afl-fuzz -b 17 -D -i /src/seeds/yajl/   -o /src/outputs/out-yajl-aflpp-002/          -- /src/build/yajl/parse   2>&1 >/src/outputs/out-yajl-aflpp-002.log &

timeout 86400 afl-fuzz -b 18 -D -i /src/seeds/expat/  -o /src/outputs/out-expat-aflpp-nyx-003/  -X -- /src/build/expat-nyx/   2>&1 >/src/outputs/out-expat-aflpp-nyx-003.log &
timeout 86400 afl-fuzz -b 19 -D -i /src/seeds/llhttp/ -o /src/outputs/out-llhttp-aflpp-nyx-003/ -X -- /src/build/llhttp-nyx/  2>&1 >/src/outputs/out-llhttp-aflpp-nyx-003.log &
timeout 86400 afl-fuzz -b 20 -D -i /src/seeds/yajl/   -o /src/outputs/out-yajl-aflpp-nyx-003/   -X -- /src/build/yajl-nyx/    2>&1 >/src/outputs/out-yajl-aflpp-nyx-003.log &
timeout 86400 afl-fuzz -b 21 -D -i /src/seeds/expat/  -o /src/outputs/out-expat-aflpp-003/         -- /src/build/expat/xmlwf  2>&1 >/src/outputs/out-expat-aflpp-003.log &
timeout 86400 afl-fuzz -b 22 -D -i /src/seeds/llhttp/ -o /src/outputs/out-llhttp-aflpp-003/        -- /src/build/llhttp/parse 2>&1 >/src/outputs/out-llhttp-aflpp-003.log &
timeout 86400 afl-fuzz -b 23 -D -i /src/seeds/yajl/   -o /src/outputs/out-yajl-aflpp-003/          -- /src/build/yajl/parse   2>&1 >/src/outputs/out-yajl-aflpp-003.log &

timeout 86400 afl-fuzz -b 24 -D -i /src/seeds/expat/  -o /src/outputs/out-expat-aflpp-nyx-004/  -X -- /src/build/expat-nyx/   2>&1 >/src/outputs/out-expat-aflpp-nyx-004.log &
timeout 86400 afl-fuzz -b 25 -D -i /src/seeds/llhttp/ -o /src/outputs/out-llhttp-aflpp-nyx-004/ -X -- /src/build/llhttp-nyx/  2>&1 >/src/outputs/out-llhttp-aflpp-nyx-004.log &
timeout 86400 afl-fuzz -b 26 -D -i /src/seeds/yajl/   -o /src/outputs/out-yajl-aflpp-nyx-004/   -X -- /src/build/yajl-nyx/    2>&1 >/src/outputs/out-yajl-aflpp-nyx-004.log &
timeout 86400 afl-fuzz -b 27 -D -i /src/seeds/expat/  -o /src/outputs/out-expat-aflpp-004/         -- /src/build/expat/xmlwf  2>&1 >/src/outputs/out-expat-aflpp-004.log &
timeout 86400 afl-fuzz -b 28 -D -i /src/seeds/llhttp/ -o /src/outputs/out-llhttp-aflpp-004/        -- /src/build/llhttp/parse 2>&1 >/src/outputs/out-llhttp-aflpp-004.log &
timeout 86400 afl-fuzz -b 29 -D -i /src/seeds/yajl/   -o /src/outputs/out-yajl-aflpp-004/          -- /src/build/yajl/parse   2>&1 >/src/outputs/out-yajl-aflpp-004.log &
