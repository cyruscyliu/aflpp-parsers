from aflplusplus/aflplusplus:latest

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc
RUN apt-get update
RUN apt-get install -y tzdata
RUN apt-get install -y libgtk-3-dev pax-utils python3-msgpack python3-jinja2
RUN apt-get install -y cpio
RUN cd /AFLplusplus/nyx_mode && ./build_nyx_support.sh

COPY targets /src/targets
COPY seeds /src/seeds
RUN mkdir /src/build && mkdir /src/outputs
RUN apt-get install -y patch
RUN apt-get install -y npm
RUN cd /src/targets/expat && bash build.sh no_asan
RUN cd /src/targets/llhttp && bash build.sh no_asan
RUN cd /src/targets/yajl && bash build.sh no_asan
RUN cd /AFLplusplus && python3 nyx_mode/packer/packer/nyx_packer.py \
    /src/build/expat/xmlwf /src/build/expat-nyx/ afl instrumentation --fast_reload_mode --purge && \
    python3 nyx_mode/packer/packer/nyx_config_gen.py /src/build/expat-nyx Kernel
RUN cd /AFLplusplus && python3 nyx_mode/packer/packer/nyx_packer.py \
    /src/build/llhttp/parse /src/build/llhttp-nyx/ afl instrumentation --fast_reload_mode --purge && \
    python3 nyx_mode/packer/packer/nyx_config_gen.py /src/build/llhttp-nyx Kernel
RUN cd /AFLplusplus && python3 nyx_mode/packer/packer/nyx_packer.py \
    /src/build/yajl/parse /src/build/yajl-nyx/ afl instrumentation --fast_reload_mode --purge && \
    python3 nyx_mode/packer/packer/nyx_config_gen.py /src/build/yajl-nyx Kernel
RUN cp /AFLplusplus/libnyx.so /usr/local/lib/afl
COPY fuzz-*.sh /AFLplusplus/
