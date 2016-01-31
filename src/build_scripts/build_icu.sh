#!/bin/sh
# 2016-01-14 16:30 MarianMMX

. $(dirname $0)/env_qt.sh
if [ -z "$2" ]; then
  if [ -z "$TRD_ICU_DEST_DIR" ]; then
    T_DIR="$(pwd)"/icu
  else
    T_DIR=$TRD_ICU_DEST_DIR
  fi
else
  T_DIR="$2"
fi
echo "DIRECTORUL DESTINATIE: $T_DIR"

if [ -d "$T_DIR" ]; then
  echo "DIRECTORUL DESTINATIE: $T_DIR EXISTA, EXIT"
  exit 1
fi

#echo $TRD_ICU_SRC_DIR
#echo $T_DIR
#exit

if [ -z "$1" ]; then
  echo "Eroare platforma $0 Linux/gcc \$(pwd)/icu"
  exit 1
fi

mkdir tmp_icu && cd tmp_icu
chmod +x "$TRD_ICU_SRC_DIR"/source/runConfigureICU
chmod +x "$TRD_ICU_SRC_DIR"/source/configure

#only for qt-creator
#../build/icu/lib/libicui18n.a(ucal.ao): relocation R_X86_64_32S against `_ZTVN6icu_5613UnicodeStringE' can not be used when making a shared object; recompile with -fPIC
#/home/marian/MarianDev4G/MarianMMX/src/build_scripts/../../../build/icu/lib/libicui18n.a: error adding symbols: Bad value
sh "$TRD_ICU_SRC_DIR"/source/runConfigureICU "$1" --prefix=$T_DIR --enable-static --disable-shared
#sh "$TRD_ICU_SRC_DIR"/source/runConfigureICU "$1" --prefix=$T_DIR --enable-static
make
make install

cd ..
rm -rf tmp_icu
echo "OVER"

