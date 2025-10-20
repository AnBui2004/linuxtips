#glib-glib-2-86
export NDK=$HOME/Android/Sdk/ndk/29.0.14206865
export TOOLCHAIN=$NDK/toolchains/llvm/prebuilt/linux-x86_64
export SYSROOT=$TOOLCHAIN/sysroot
export API=23
export PKG_CONFIG_PATH=$HOME/output/android/libiconv/arm64-v8a/lib/pkgconfig
export LD_LIBRARY_PATH=$HOME/output/android/libiconv/arm64-v8a/lib
export CFLAGS="-I$HOME/output/android/libiconv/arm64-v8a/include"
export LDFLAGS="-L$HOME/output/android/libiconv/arm64-v8a/lib -liconv"
git clone https://gitlab.gnome.org/GNOME/gvdb.git
rm -rf builddir
meson setup builddir \
  --prefix=/home/nguyen/output/android/glib/arm64-v8a \
  --cross-file=android_arm64_cross.txt \
  -Ddefault_library=shared \
  -Dtests=false \
  -Dlibmount=disabled \
  -Dnls=disabled

ninja -C builddir
ninja -C builddir install
