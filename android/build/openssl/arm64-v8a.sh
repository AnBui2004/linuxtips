#openssl-3.6.0
export ANDROID_NDK_ROOT=$HOME/Android/Sdk/ndk/29.0.14206865
export PATH=$ANDROID_NDK_ROOT/toolchains/llvm/prebuilt/linux-x86_64/bin:$PATH
export CC=aarch64-linux-android23-clang
export AR=llvm-ar
export RANLIB=llvm-ranlib
export STRIP=llvm-strip
export API=23
./Configure android-arm64 no-shared no-tests no-asm --prefix=$HOME/output/android/openssl/arm64-v8a
make -j$(nproc)
make install