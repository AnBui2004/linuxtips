#pixman-0.46.4
export NDK=$HOME/Android/Sdk/ndk/29.0.14206865
export TOOLCHAIN=$NDK/toolchains/llvm/prebuilt/linux-x86_64
export SYSROOT=$TOOLCHAIN/sysroot
export API=23
rm -rf builddir
meson setup builddir \
  --cross-file android_x86_64_cross.txt \
  --prefix=/home/nguyen/Downloads/pixman-install-x86_64 \
  -Dtests=disabled \
  -Ddemos=disabled \
  -Dgtk=disabled \
  -Ddefault_library=static
DESTDIR=$HOME/output/android/pixman/x86_64 ninja -C builddir install