#!/bin/sh
# 2016-01-14 19:30 MarianMMX

TEMP_DIR="tmp_openssl"

echo "NUME SYSTEM: $NUME_SYSTEM"

. $(dirname $0)/env_qt.sh
if [ -z "$2" ]; then
  if [ -z "$TRD_OPENSSL_DEST_DIR" ]; then
    T_DIR="$(pwd)"/openssl
  else
    T_DIR=$TRD_OPENSSL_DEST_DIR
  fi
else
  T_DIR="$2"
fi
echo "DIRECTORUL DESTINATIE: $T_DIR"

if [ -d "$T_DIR" ]; then
  echo "DIRECTORUL DESTINATIE: $T_DIR EXISTA, EXIT"
  exit 1
fi

#echo $TRD_OPENSSL_DEST_DIR
#echo $T_DIR
#exit

if [ -z "$1" ]; then
  # echo "Eroare platforma $0 Linux/gcc \$(pwd)/openssl"
  # exit 1
fi

mkdir $TEMP_DIR && cd $TEMP_DIR
chmod +x "$TRD_OPENSSL_SRC_DIR"/config
sh "$TRD_OPENSSL_SRC_DIR"/config --prefix=$T_DIR
make
make install

cd ..
rm -rf $TEMP_DIR
echo "OVER"
