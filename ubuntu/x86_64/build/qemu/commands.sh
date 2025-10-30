#Qemu 7.2.21
#Build with Snapdragon CPUs
sudo apt update
sudo apt install build-essential pkg-config git python3 libgtk-3-dev libsdl2-dev zstd pzip2 seccomp glusterfs-server slirp libxxf86vm-dev clang llvm-dev lld libc++-dev libc++abi-dev
pip install Ninja Sphinx
#If the Ubuntu version you are using has an incompatible version of a dependency library and you have built your own and installed it here
export PATH=/usr/local/bin:$PATH
#Force upgrade meson to latest version
pip install meson --upgrade
#Add to let the builder know if your CPU supports CRC instructions
export CC=gcc
export CXX=g++
export CFLAGS="-O2 -msse4.2"
export CXXFLAGS="-O2 -msse4.2 -fpermissive"
#Build with qemu-3dfx
#https://github.com/kjliew/qemu-3dfx
mkdir myqemu && cd myqemu
git clone https://github.com/kjliew/qemu-3dfx.git
cd qemu-3dfx
wget https://download.qemu.org/qemu-7.2.21.tar.xz
tar xf qemu-7.2.21.tar.xz
cd qemu-7.2.21
#Running the three commands below more than once may cause code duplication, if this happens you can go there and delete the duplicated code.
rsync -r ../qemu-0/hw/3dfx ../qemu-1/hw/mesa ./hw/
patch -p0 -i ../02-qemu72x-mesa-glide.patch
bash ../scripts/sign_commit
mkdir ../build && cd ../build
#If you want to build all of them, remove the target-list flag or add more targets separated by comma
#../qemu-7.2.21/configure --enable-gtk --enable-sdl --enable-io-uring --enable-libaio --enable-libssh --enable-cap-ng --target-list=x86_64-softmmu,i386-softmmu,aarch64-softmmu,ppc-softmmu
../qemu-7.2.21/configure --enable-gtk --enable-sdl --target-list=x86_64-softmmu,i386-softmmu,aarch64-softmmu,ppc-softmmu
#Use all CPU cores to build faster
make -j$(nproc)