#!/bin/sh
# 2016-01-14 20:00 MarianMMX

. $(dirname $0)/env_qt.sh

# CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:"$(pwd)"/../QtExtra/icu/include/:"$(pwd)"/../QtExtra/openssl/include/
# export CPLUS_INCLUDE_PATH
# LIBRARY_PATH=$LIBRARY_PATH:"$(pwd)"/../QtExtra/icu/lib/
# export LIBRARY_PATH
#echo $INCLUDE; exit
OPENSSL_LIBS='-lssl -lcrypto'
export OPENSSL_LIBS

$BUILD_SCRIPTS_DIR/config_qt.sh
make
