#!/bin/sh
# 2016-01-14 22:20 MarianMMX

. $(dirname $0)/env_qt.sh


O_DIR=$(pwd)
cd "$BUILD_DIR"
if [ ! -d "qtwebkit" ]; then
	mkdir qtwebkit
fi
cd qtwebkit

$BUILD_SCRIPTS_DIR/config_qt.sh
make

cd $O_DIR

