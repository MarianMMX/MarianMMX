OPENSSL_LIBS='-lssl -lcrypto'
export OPENSSL_LIBS
#../qtbase-opensource-src-5.5.1/configure \
/home/Marian/MarianMMX/src/3rdparty/qt5/qtbase/configure \
-nomake examples -nomake tests -opensource -confirm-license \
-qt-sql-sqlite \
-static -release \
-openssl-linked  \
-strip \
-no-sse2 -no-sse3 -no-sse4.1 -no-sse4.2 -no-avx -no-avx2 \
-no-opengl -icu -qt-zlib -qt-libpng -qt-libjpeg \
-I "../QtExtra/icu/include/" \
-qpa phantom \
-no-openvg -no-egl -no-eglfs -no-sql-sqlite2 -no-xcb -no-xcb-xlib \
-no-linuxfb -no-directfb -no-evdev -no-kms -no-sm -no-dbus -no-alsa \
-no-feature-accessibility \
-v
#-no-gui \
#-v \

