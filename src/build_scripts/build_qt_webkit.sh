#!/bin/sh
# 2016-01-14 22:20 MarianMMX

. $(dirname $0)/env_qt.sh


O_DIR=$(pwd)
cd "$BUILD_DIR"
if [ ! -d "qtwebkit" ]; then
	mkdir qtwebkit
fi
cd qtwebkit

SQLITE3SRCDIR="$QT_SRC_BASE_DIR"/qtbase/src/3rdparty/sqlite
export SQLITE3SRCDIR

$BUILD_DIR/qtbase/bin/qmake $QT_SRC_BASE_DIR/qtwebkit/WebKit.pro
if [ "$1" = "go" ]; then
  echo "Make"
  make
else
	echo "Call $0 go for make"
fi

cd $O_DIR

