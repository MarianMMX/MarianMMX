#!/bin/sh
# 2016-01-14 16:30 MarianMMX

. $(dirname $0)/env_qt.sh
T_DIR="$(pwd)"/icu

#echo $TRD_ICU_SRC_DIR
#exit

if [ -z "$1" ]; then
  echo "Eroare platforma $0 Linux/gcc"
  exit 1
fi

chmod +x "$TRD_ICU_SRC_DIR"/source/runConfigureICU
chmod +x "$TRD_ICU_SRC_DIR"/source/configure
sh "$TRD_ICU_SRC_DIR"/source/runConfigureICU "$1" --prefix=$T_DIR --enable-static --disable-shared
make
make install
