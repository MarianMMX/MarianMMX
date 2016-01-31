#!/bin/sh
# 2016-01-31 13:00 MarianMMX

if [ -z "$1" ]; then
  echo "Eroare nume modul"
  echo "./cale/numescript.sh NumeModul [NumeProFile]"
  exit
fi

. $(dirname $0)/env_qt.sh

MODUL=$1

QMAKE_EXE="$BUILD_DIR"/qtbase/bin/qmake

if [ ! -f "$QMAKE_EXE" ]; then
  echo "$QMAKE_EXE nu exista"
  exit
fi

MOD_DIR="$QT_SRC_BASE_DIR"/"$MODUL"
if [ ! -d "$MOD_DIR" ]; then
  echo "Modulul $MOD_DIR nu exista" 
  exit
fi

if [ -z "$2" ]; then
  MODUL_PRO="$MOD_DIR"/"$MODUL".pro
else
  MODUL_PRO="$MOD_DIR"/"$2"
fi
#echo $MODUL_PRO;echo $2;exit

if [ ! -f "$MODUL_PRO" ]; then
  echo "Fisierul proiect $MODUL_PRO nu exista"
  exit
fi

O_DIR=$(pwd)

MOD_BUILD="$BUILD_DIR"/"$MODUL"

if [ "$3" == "continue" ]; then
  cd "$BUILD_DIR"/"$MODUL"
else

if [ -d "$MOD_BUILD" ]; then
  echo "Directorul $MOD_BUILD exista, stergeti acest director, sau adauga al 3lea arg continue"
  exit
fi

cd "$BUILD_DIR"
if [ ! -d "$MODUL" ]; then
	mkdir "$MODUL"
fi
cd "$MODUL"

$QMAKE_EXE $MODUL_PRO
fi
make
#make install

cd $O_DIR

