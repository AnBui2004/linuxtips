export NDK=$HOME/Android/Sdk/ndk/29.0.14206865
export TOOLCHAIN=$NDK/toolchains/llvm/prebuilt/linux-x86_64
export SYSROOT=$TOOLCHAIN/sysroot
export API=23
rm -rf build_android_aarch64
meson setup build_android_aarch64 \
  --cross-file android_arm64_cross.txt \
  --prefix=$HOME/output/android/spice-server/aarch64 \
  -Ddefault_library=static \
  -Dgstreamer=no \
  -Dsmartcard=disabled \
  -Dlz4=false \
  -Dsasl=false \
  -Dtests=false \
  -Dmanual=false
ninja -C build_android_aarch64
ninja -C build_android_aarch64 install
