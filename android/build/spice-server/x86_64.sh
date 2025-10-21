export NDK=$HOME/Android/Sdk/ndk/29.0.14206865
export TOOLCHAIN=$NDK/toolchains/llvm/prebuilt/linux-x86_64
export SYSROOT=$TOOLCHAIN/sysroot
export API=23
export LDFLAGS="-L/home/nguyen/output/android/pixman/x86_64/home/nguyen/Downloads/pixman-install-x86_64/lib \
-L/home/nguyen/output/android/glib/x86_64/lib \
-L/home/nguyen/output/android/openssl/x86_64/lib \
-L/home/nguyen/output/android/libjpeg/x86_64/lib"
rm -rf build_android_x86_64
#Change -Ddefault_library=static to -Ddefault_library=shared to get the file so.
meson setup build_android_x86_64 \
  --cross-file android_x86_64_cross.txt \
  --prefix=$HOME/output/android/spice-server/x86_64 \
  -Ddefault_library=shared \
  -Dgstreamer=no \
  -Dsmartcard=disabled \
  -Dlz4=false \
  -Dsasl=false \
  -Dtests=false \
  -Dmanual=false
ninja -C build_android_x86_64
ninja -C build_android_x86_64 install
