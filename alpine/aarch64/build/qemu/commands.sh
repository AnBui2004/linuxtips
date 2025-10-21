#Build with Snapdragon CPU
apk update
apk add --no-cache bash curl tar rsync flex build-base git meson bison ninja python3 py3-pip glib-dev pixman-dev sdl2-dev sdl2_image-dev sndio alsa-utils alsaconf zlib-dev libaio-dev liburing-dev libcap libcap-ng libssh lzo snappy lzfse capstone libcbor libdw gtk+3.0-dev
pip install Ninja Sphinx --break-system-packages
pip install meson --upgrade --break-system-packages
export CFLAGS="-O2 -march=armv8-a+crc -mtune=native"
export CXXFLAGS="$CFLAGS"
export LDFLAGS="-march=armv8-a+crc"
#Build with qemu-3dfx
#https://github.com/kjliew/qemu-3dfx
mkdir ~/myqemu && cd ~/myqemu
git clone https://github.com/kjliew/qemu-3dfx.git
cd qemu-3dfx
wget https://download.qemu.org/qemu-9.2.2.tar.xz
tar xf qemu-9.2.2.tar.xz
cd qemu-9.2.2
#Running the three commands below more than once may cause code duplication, if this happens you can go there and delete the duplicated code.
rsync -r ../qemu-0/hw/3dfx ../qemu-1/hw/mesa ./hw/
patch -p0 -i ../00-qemu92x-mesa-glide.patch
bash ../scripts/sign_commit
mkdir ../build && cd ../build
../qemu-9.2.2/configure --target-list=x86_64-softmmu,i386-softmmu,aarch64-softmmu,ppc-softmmu
make -j$(nproc)