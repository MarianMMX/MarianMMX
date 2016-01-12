mariadb-connector-c-2.2.1-src.tar.gz  
wget --no-check-certificate https://goo.gl/eoAQwf  
  
icu4c-56_1-src.zip  
wget --no-check-certificate https://goo.gl/mLXZ6x  
  
openssl  
wget --no-check-certificate https://goo.gl/2RvV8m  
  
FreeBSD  
(mariadb)  
pkg install cmake  
(icu)  
pkg install gmake  
sh runConfigureICU FreeBSD --prefix=/usr/home/user/out --enable-static --disable-shared  
gmake  
gmake install  
