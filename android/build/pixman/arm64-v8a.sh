#pixman-0.46.4
export NDK=$HOME/Android/Sdk/ndk/29.0.14206865
export TOOLCHAIN=$NDK/toolchains/llvm/prebuilt/linux-x86_64
export SYSROOT=$TOOLCHAIN/sysroot
export API=23
rm -rf builddir
meson setup builddir \
  --cross-file=android_arm64_cross.txt \
  -Ddefault_library=static \
  -Dtests=disabled \
  -Dmmx=disabled \
  -Dsse2=disabled \
  -Dneon=enabled
DESTDIR=$HOME/output/android/pixman/arm64-v8a ninja -C builddir install