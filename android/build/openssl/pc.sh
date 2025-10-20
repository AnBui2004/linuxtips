mkdir -p $HOME/output/android/openssl/arm64-v8a/lib/pkgconfig

cat > $HOME/output/android/openssl/arm64-v8a/lib/pkgconfig/openssl.pc <<'EOF'
prefix=/home/nguyen/output/android/openssl/arm64-v8a
exec_prefix=${prefix}
libdir=${exec_prefix}/lib
includedir=${prefix}/include

Name: OpenSSL
Description: OpenSSL Library
Version: 3.6.0
Libs: -L${libdir} -lssl -lcrypto
Cflags: -I${includedir}
EOF

#x86_64
mkdir -p $HOME/output/android/openssl/x86_64/lib/pkgconfig

cat > $HOME/output/android/openssl/x86_64/lib/pkgconfigopenssl.pc <<'EOF'
prefix=/home/nguyen/output/android/openssl/x86_64
exec_prefix=${prefix}
libdir=${exec_prefix}/lib
includedir=${prefix}/include

Name: OpenSSL
Description: OpenSSL Library
Version: 3.6.0
Libs: -L${libdir} -lssl -lcrypto
Cflags: -I${includedir}
EOF
