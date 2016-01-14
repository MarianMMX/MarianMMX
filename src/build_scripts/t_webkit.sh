. ../env_qt.sh
echo $LIBRARY_PATH
SQLITE3SRCDIR=/usr/home/Marian/MarianMMX/src/3rdparty/qt5/qtbase/src/3rdparty/sqlite
export SQLITE3SRCDIR
../Qt551BSD/bin/qmake /usr/home/Marian/MarianMMX/src/3rdparty/qt5/qtwebkit/WebKit.pro
if [ "$1" = "go" ]; then
  echo "Make"
  gmake
fi


