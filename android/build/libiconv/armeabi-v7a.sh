rm -r build
export NDK=/home/nguyen/Android/Sdk/ndk/29.0.14206865
export TOOLCHAIN=$NDK/toolchains/llvm/prebuilt/linux-x86_64
export API=23
export CC=$TOOLCHAIN/bin/armv7a-linux-androideabi$API-clang
export CXX=$TOOLCHAIN/bin/armv7a-linux-androideabi$API-clang++
mkdir build
cd build
../configure --host=armv7a-linux-androideabi --prefix=/home/nguyen/output/android/armeabi-v7a/libiconv
make -j$(nproc)
make install