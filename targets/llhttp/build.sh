WORKDIR="$PWD/../../build/llhttp"

export CC=$(which afl-clang-fast)
export CXX=$(which afl-clang-fast++)

error () {
  echo "$0: <asan/no_asan>"
  exit 0
}

if test "$#" -ne 1; then
  error
fi

if [ "$1" != "asan" ] && [ "$1" != "no_asan" ] ; then
  error
fi

if test -f "$CC" && test -f "$CXX"; then

  if [ "$1" = "asan" ]; then
    CFLAGS="-fsanitize=address"
    CXXFLAGS="-fsanitize=address"
    LDFLAGS="-fsanitize=address"
  else
    CFLAGS=""
    CXXFLAGS=""
    LDFLAGS=""
  fi

  export CFLAGS="$CFLAGS -O0 -g -fno-inline"
  export CXXFLAGS="$CFLAGS"
  export LDFLAGS=$LDFLAGS

  rm -rf $WORKDIR

  mkdir $WORKDIR

  cp driver.c $WORKDIR

  cd $WORKDIR && \
  git clone https://github.com/nodejs/llhttp.git llhttp_repo && \
  cd llhttp_repo && \
  git checkout c0f4e75 && \
  npm install && \
  make build/libllhttp.a && \
  cd - && \
  $CC $CFLAGS -c driver.c -o driver.o -I llhttp_repo/build/ && \
  $CC $CFLAGS driver.o llhttp_repo/build/libllhttp.a \
                -o parse $LDFLAGS $LDLIBS && \
  echo "SUCCESS"
else
  echo "Error: AFL clang compiler not found:\n\t$CC\n\t$CPP"
fi
