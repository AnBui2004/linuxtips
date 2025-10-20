rm -r build
export NDK=/home/nguyen/Android/Sdk/ndk/29.0.14206865
export TOOLCHAIN=$NDK/toolchains/llvm/prebuilt/linux-x86_64
export API=23
export CC=$TOOLCHAIN/bin/i686-linux-android$API-clang
export CXX=$TOOLCHAIN/bin/i686-linux-android$API-clang++
export AR=$TOOLCHAIN/bin/llvm-ar
export RANLIB=$TOOLCHAIN/bin/llvm-ranlib
export STRIP=$TOOLCHAIN/bin/llvm-strip
mkdir build
cd build
../configure --host=i686-linux-android --prefix=/home/nguyen/output/android/x86/libiconv
make -j$(nproc)
make install