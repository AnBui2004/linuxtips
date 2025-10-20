#glib-glib-2-86
rm -r build
export NDK=$HOME/Android/Sdk/ndk/29.0.14206865
export TOOLCHAIN=$NDK/toolchains/llvm/prebuilt/linux-x86_64
export SYSROOT=$TOOLCHAIN/sysroot
export API=23
mkdir build
cd build
../configure --host=aarch64-linux-android --prefix=$HOME/output/android/arm64-v8a/glib --with-sysroot=$SYSROOT
make -j$(nproc)
make install