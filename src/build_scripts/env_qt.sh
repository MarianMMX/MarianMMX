#!/bin/sh
# 2016-01-14 14:54 MarianMMX

NUME_SYSTEM="$(uname -s)_$(uname -r)_$(uname -m)_gcc$(gcc -dumpversion)"
export NUME_SYSTEM

BUILD_SCRIPTS_DIR=$(dirname $(readlink -f $0))
export BUILD_SCRIPTS_DIR

TRD_SRC_DIR=$(dirname $(readlink -f $0))/../3rdparty
export TRD_SRC_DIR

BUILD_DIR=$(dirname $(readlink -f $0))/../../../build
export BUILD_DIR

QT_SRC_BASE_DIR=$(dirname $(readlink -f $0))/../3rdparty/qt5
export QT_SRC_BASE_DIR
QT_EXTRA_DIR="$(pwd)"/../QtExtra

TRD_ICU_SRC_DIR=$(dirname $(readlink -f $0))/../3rdparty/icu
export TRD_ICU_SRC_DIR
TRD_ICU_DEST_DIR="$BUILD_DIR"/icu
export TRD_ICU_DEST_DIR

TRD_OPENSSL_SRC_DIR=$(dirname $(readlink -f $0))/../3rdparty/openssl
export TRD_OPENSSL_SRC_DIR
TRD_OPENSSL_DEST_DIR="$BUILD_DIR"/openssl
export TRD_OPENSSL_DEST_DIR

CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$BUILD_DIR/icu/include/:$BUILD_DIR/openssl/include/
export CPLUS_INCLUDE_PATH
LIBRARY_PATH=$LIBRARY_PATH:$BUILD_DIR/icu/lib/:$BUILD_DIR/openssl/lib/
export LIBRARY_PATH
#echo $LIBRARY_PATH
#exit

