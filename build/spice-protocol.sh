mkdir -p $HOME/output/android/spice-protocol
meson setup builddir --prefix=$HOME/output/android/spice-protocol
ninja -C builddir install