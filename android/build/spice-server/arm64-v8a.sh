export PKG_CONFIG_PATH="$HOME/output/android/glib/arm64-v8a/lib/pkgconfig:$HOME/output/android/libiconv/arm64-v8a/lib/pkgconfig:$HOME/output/android/spice-protocol/share/pkgconfig"
rm -rf builddir
meson setup builddir \
  --cross-file=$HOME/Downloads/glib-glib-2-86/android_arm64_cross.txt \
  -Ddefault_library=shared \
  -Dtests=false \
  -Dmanual=false \
  -Dgstreamer=no

ninja -C builddir
ninja -C builddir install
