CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:"$(pwd)"/../QtExtra/icu/include/:"$(pwd)"/../QtExtra/openssl/include/
export CPLUS_INCLUDE_PATH
LIBRARY_PATH=$LIBRARY_PATH:"$(pwd)"/../QtExtra/icu/lib/
export LIBRARY_PATH
#echo $INCLUDE; exit
OPENSSL_LIBS='-lssl -lcrypto'
export OPENSSL_LIBS

../config_qt.sh
make

