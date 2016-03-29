mariadb-connector-c-2.2.1-src.tar.gz  
wget --no-check-certificate https://goo.gl/eoAQwf  
  
icu4c-56_1-src.zip  
wget --no-check-certificate https://github.com/MarianMMX/MarianMMX/blob/master/src/archives/icu4c-56_1-src.zip?raw=true  
  
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
  
webkit  
pkg install perl  
pkg install python  
pkg install bison  
pkg install ruby  
  
pkg install git  
  
pkg install xorg  
pkg install lxde-meta  

  
Lubuntu  
```  
sudo apt-get install git  
sudo apt-get install gcc  
sudo apt-get install g++  
sudo apt-get install cmake  
sudo apt-get install wine  
sudo apt-get install libgl-dev  
```  

..\ruby_scr\configure.bat  
--with-static-linked-ext ^  
--disable-debug-env ^  
--disable-install-doc ^  
--prefix %DEST_DIR% ^  
--without-ext="win32ole,fiddle"  
  
```
pkm install openssl-dev  
wget https://www.dropbox.com/s/gz4ihuu1tvmw2uw/ruby-2.2.4.tar.gz?dl=1  
curl -o ruby_src.tar.gz -L https://www.dropbox.com/s/gz4ihuu1tvmw2uw/ruby-2.2.4.tar.gz?dl=1  
mkdir build && cd build  
../src/configure \  
--with-static-linked-ext \  
--disable-debug-env \  
--disable-install-doc \  
--without-X11 \  
--prefix $(pwd)/out  
```
  
yum install httpd mod_ssl  
yum install php php-devel php-mysql php-gd php-xml  
  
sudo a2enmod vhost_alias  
