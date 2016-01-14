#!/bin/sh
# 2016-01-14 14:54 MarianMMX

BUILD_DIR=$(dirname $(readlink -f $0))/../../../build
export BUILD_DIR

QT_SRC_BASE_DIR=$(dirname $(readlink -f $0))/../3rdparty/qt5
QT_EXTRA_DIR="$(pwd)"/../QtExtra

TRD_ICU_SRC_DIR=$(dirname $(readlink -f $0))/../3rdparty/icu
export TRD_ICU_SRC_DIR
TRD_ICU_DEST_DIR="$BUILD_DIR"/icu
export TRD_ICU_DEST_DIR

TRD_OPENSSL_SRC_DIR=$(dirname $(readlink -f $0))/../3rdparty/openssl
export TRD_OPENSSL_SRC_DIR
TRD_OPENSSL_DEST_DIR="$BUILD_DIR"/openssl
export TRD_OPENSSL_DEST_DIR

CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$QT_EXTRA_DIR/icu/include/:$QT_EXTRA_DIR/openssl/include/
export CPLUS_INCLUDE_PATH
LIBRARY_PATH=$LIBRARY_PATH:$QT_EXTRA_DIR/icu/lib/
export LIBRARY_PATH
