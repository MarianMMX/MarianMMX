#!/bin/sh

QT_SRC_VER=5.5.1

if [ -z "$1" ]; then
  echo "Eroare argument"
  exit
fi
  
MODUL=$1

MOD_DIR=qt"$MODUL"-opensource-src-"$QT_SRC_VER"
URL=http://download.qt.io/official_releases/qt/5.5/"$QT_SRC_VER"/submodules/qt"$MODUL"-opensource-src-"$QT_SRC_VER".tar.gz

echo $URL
#exit

#wget $URL
tar -xzf "$MOD_DIR".tar.gz
mkdir $MODUL
exit

OPEN_SSL="openssl"
T_DIR="$(pwd)"/"$OPEN_SSL"_out
RNAME="$OPEN_SSL"_"$(uname -s)_$(uname -r)_$(uname -m)_gcc$(gcc -dumpversion)"
NUME_ARHIVA=$RNAME.tar.gz
T_DIR=$T_DIR/$RNAME
echo $T_DIR/$NUME_ARHIVA
echo $URL
exit

echo Downloadam arhiva:
wget --no-check-certificate $URL -O $OPEN_SSL.tar.gz
mkdir $OPEN_SSL && cd $OPEN_SSL
echo Extragem arhiva: 
tar -xzf ../$OPEN_SSL.tar.gz
rm -rf ../$OPEN_SSL.tar.gz
cd $OPEN_SSL*

#calea completa, altfel apar probleme
echo Configuram in $T_DIR
./config --prefix=$T_DIR
echo MAKE
make
echo INSTALL
make install

cd ../..
echo STERGEM FOLDERUL DE LUCRU
rm -rf $OPEN_SSL

echo CREAM ARHIVA
cd "$OPEN_SSL"_out
tar -czf $NUME_ARHIVA $RNAME
mv $NUME_ARHIVA ..
cd ..

echo STERGEM "$OPEN_SSL"_out 
rm -rf "$OPEN_SSL"_out
 

