#!/bin/sh
# 2016-01-14 16:30 MarianMMX

. $(dirname $0)/env_qt.sh
T_DIR="$(pwd)"/icu

sh runConfigureICU --prefix=$T_DIR --enable-static --disable-shared
make
make install
