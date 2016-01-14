#!/bin/sh
# 2016-01-14 20:15 MarianMMX

OPENSSL_LIBS='-lssl -lcrypto'
export OPENSSL_LIBS
#../qtbase-opensource-src-5.5.1/configure \
if [ -z "$QT_SRC_BASE_DIR" ]; then
	echo "Empty QT_SRC_BASE_DIR"
	exit 1
fi
#-no-sse2 -no-sse3 -no-sse4.1 -no-sse4.2 -no-avx -no-avx2 \
$QT_SRC_BASE_DIR/qtbase/configure \
-nomake examples -nomake tests -opensource -confirm-license \
-qt-sql-sqlite \
-static -release \
-openssl-linked  \
-strip \
-no-opengl -icu -qt-zlib -qt-libpng -qt-libjpeg \
-qpa phantom \
-no-openvg -no-egl -no-eglfs -no-sql-sqlite2 -no-xcb -no-xcb-xlib \
-no-linuxfb -no-directfb -no-evdev -no-kms -no-sm -no-dbus -no-alsa \
-no-feature-accessibility \
-v
