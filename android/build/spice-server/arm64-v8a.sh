export NDK=$HOME/Android/Sdk/ndk/29.0.14206865
export TOOLCHAIN=$NDK/toolchains/llvm/prebuilt/linux-x86_64
export SYSROOT=$TOOLCHAIN/sysroot
export API=23
export LDFLAGS="-L/home/nguyen/output/android/pixman/arm64-v8a/usr/local/lib \
-L/home/nguyen/output/android/glib/arm64-v8a/lib \
-L/home/nguyen/output/android/openssl/arm64-v8a/lib \
-L/home/nguyen/output/android/libjpeg/arm64-v8a/lib"
rm -rf build_android_arm64-v8a
#Change -Ddefault_library=static to -Ddefault_library=shared to get the file so.
meson setup build_android_arm64-v8a \
  --cross-file android_arm64_cross.txt \
  --prefix=$HOME/output/android/spice-server/arm64-v8a \
  -Ddefault_library=shared \
  -Dgstreamer=no \
  -Dsmartcard=disabled \
  -Dlz4=false \
  -Dsasl=false \
  -Dtests=false \
  -Dmanual=false
ninja -C build_android_arm64-v8a
ninja -C build_android_arm64-v8a install
