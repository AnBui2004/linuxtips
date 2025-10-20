rm -r build
export NDK=$HOME/Android/Sdk/ndk/29.0.14206865
export TOOLCHAIN=$NDK/toolchains/llvm/prebuilt/linux-x86_64
export API=23
export CC=$TOOLCHAIN/bin/aarch64-linux-android$API-clang
export CXX=$TOOLCHAIN/bin/aarch64-linux-android$API-clang++
mkdir build
cd build
../configure --host=aarch64-linux-android --prefix=$HOME/output/android/arm64-v8a/libiconv
make -j$(nproc)
make install