#!/bin/sh
# 2016-01-14 14:54 MarianMMX

QT_SRC_BASE_DIR=$(dirname $0)/../3rdparty/qt5
QT_EXTRA_DIR="$(pwd)"/../QtExtra

TRD_ICU_SRC_DIR=$(dirname $0)/../3rdparty/icu
export $TRD_ICU_SRC_DIR
TRD_OPENSSL_SRC_DIR=$(dirname $0)/../3rdparty/openssl
export $TRD_OPENSSL_SRC_DIR

CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$QT_EXTRA_DIR/icu/include/:$QT_EXTRA_DIR/openssl/include/
export CPLUS_INCLUDE_PATH
LIBRARY_PATH=$LIBRARY_PATH:$QT_EXTRA_DIR/icu/lib/
export LIBRARY_PATH
