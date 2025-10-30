export CFLAGS="-O2 -pipe -march=armv5te -mfloat-abi=soft"
#The locations of the -lncurses -ltinfo libraries for armel are located separately.
export LDFLAGS="-L/home/nguyen/usr/lib/arm-linux-gnueabi -static -Wl,--allow-multiple-definition"
export PPFLAGS="-I/home/nguyen/usr/include"
export LIBS="-lncurses -ltinfo"
export CC=arm-linux-gnueabi-gcc
export CXX=arm-linux-gnueabi-g++
apt install clang git make autoconf automake gcc-arm-linux-gnueabi g++-arm-linux-gnueabi autoconf automake libtool pkg-config libncurses5-dev libtinfo-dev wget unzip
wget https://github.com/htop-dev/htop/archive/refs/tags/2.0.2.zip
unzip 2.0.2.zip
cd htop-2.0.2
./autogen.sh
mkdir build
cd build
../configure --host=arm-linux-gnueabi --disable-unicode --disable-openvz --disable-vserver
make