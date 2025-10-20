#arm64-v8a
mkdir -p $HOME/output/android/libiconv/arm64-v8a/lib/pkgconfig

cat > $HOME/output/android/libiconv/arm64-v8a/lib/pkgconfig/libiconv.pc <<'EOF'
prefix=$HOME/output/android/libiconv/arm64-v8a
exec_prefix=${prefix}
libdir=${exec_prefix}/lib
includedir=${prefix}/include

Name: libiconv
Description: Character set conversion library
Version: 1.18
Libs: -L${libdir} -liconv
Cflags: -I${includedir}
EOF

cp $HOME/output/android/libiconv/arm64-v8a/lib/pkgconfig/libiconv.pc \
   $HOME/output/android/libiconv/arm64-v8a/lib/pkgconfig/iconv.pc

#armeabi-v7a
mkdir -p $HOME/output/android/libiconv/armeabi-v7a/lib/pkgconfig

cat > $HOME/output/android/libiconv/armeabi-v7a/lib/pkgconfig/libiconv.pc <<'EOF'
prefix=$HOME/output/android/libiconv/armeabi-v7a
exec_prefix=${prefix}
libdir=${exec_prefix}/lib
includedir=${prefix}/include

Name: libiconv
Description: Character set conversion library
Version: 1.18
Libs: -L${libdir} -liconv
Cflags: -I${includedir}
EOF

cp $HOME/output/android/libiconv/armeabi-v7a/lib/pkgconfig/libiconv.pc \
   $HOME/output/android/libiconv/armeabi-v7a/lib/pkgconfig/iconv.pc

#x86_64
mkdir -p $HOME/output/android/libiconv/x86_64/lib/pkgconfig

cat > $HOME/output/android/libiconv/x86_64/lib/pkgconfig/libiconv.pc <<'EOF'
prefix=$HOME/output/android/libiconv/x86_64
exec_prefix=${prefix}
libdir=${exec_prefix}/lib
includedir=${prefix}/include

Name: libiconv
Description: Character set conversion library
Version: 1.18
Libs: -L${libdir} -liconv
Cflags: -I${includedir}
EOF

cp $HOME/output/android/libiconv/x86_64/lib/pkgconfig/libiconv.pc \
   $HOME/output/android/libiconv/x86_64/lib/pkgconfig/iconv.pc

#x86
mkdir -p $HOME/output/android/libiconv/x86/lib/pkgconfig

cat > $HOME/output/android/libiconv/x86/lib/pkgconfig/libiconv.pc <<'EOF'
prefix=$HOME/output/android/libiconv/x86
exec_prefix=${prefix}
libdir=${exec_prefix}/lib
includedir=${prefix}/include

Name: libiconv
Description: Character set conversion library
Version: 1.18
Libs: -L${libdir} -liconv
Cflags: -I${includedir}
EOF

cp $HOME/output/android/libiconv/x86/lib/pkgconfig/libiconv.pc \
   $HOME/output/android/libiconv/x86/lib/pkgconfig/iconv.pc