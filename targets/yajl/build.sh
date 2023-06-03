WORKDIR="$PWD/../../build/yajl"

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

  cd $WORKDIR && \
  git clone https://github.com/lloyd/yajl.git yajl_repo && \
  cd yajl_repo && \
  git checkout 5e3a785 && \
  mkdir build && cd build && \
  cmake .. && \
  make && \
  cp test/parsing/yajl_test ../../parse && \
  echo "SUCCESS"
else
  echo "Error: AFL clang compiler not found:\n\t$CC\n\t$CPP"
fi
