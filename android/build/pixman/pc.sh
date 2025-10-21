#arm64-v8a
mkdir -p $HOME/output/android/pixman/arm64-v8a/lib/pkgconfig

cat > $HOME/output/android/pixman/arm64-v8a/lib/pkgconfig/pixman-1.pc <<'EOF'
prefix=/home/nguyen/Downloads/pixman-install-x86_64
exec_prefix=${prefix}
libdir=${exec_prefix}/lib
includedir=${prefix}/include/pixman-1

Name: pixman-1
Description: pixel manipulation library
Version: 0.46.4
Libs: -L${libdir} -lpixman-1
Cflags: -I${includedir}
EOF

#x86_64
mkdir -p $HOME/Downloads/pixman-install-x86_64/lib/pkgconfig

cat > $HOME/Downloads/pixman-install-x86_64/lib/pkgconfig/pixman-1.pc <<'EOF'
prefix=/home/nguyen/Downloads/pixman-install-x86_64
exec_prefix=${prefix}
libdir=${prefix}/lib
includedir=${prefix}/include/pixman-1

Name: pixman-1
Description: Pixman library for Android build
Version: 0.46.4
Libs: -L${libdir} -lpixman-1
Cflags: -I${includedir}
EOF
