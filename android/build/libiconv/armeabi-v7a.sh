#libiconv-1.18
rm -r build
export NDK=$HOME/Android/Sdk/ndk/29.0.14206865
export TOOLCHAIN=$NDK/toolchains/llvm/prebuilt/linux-x86_64
export API=23
export CC=$TOOLCHAIN/bin/armv7a-linux-androideabi$API-clang
export CXX=$TOOLCHAIN/bin/armv7a-linux-androideabi$API-clang++
export AR=$TOOLCHAIN/bin/llvm-ar
export RANLIB=$TOOLCHAIN/bin/llvm-ranlib
export STRIP=$TOOLCHAIN/bin/llvm-strip
mkdir build
cd build
../configure --host=armv7a-linux-androideabi --prefix=$HOME/output/android/armeabi-v7a/libiconv
make -j$(nproc)
make install