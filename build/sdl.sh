sudo apt install libudev-dev libdecor-0-dev libxss-dev libsndio-dev libdrm-dev libgbm-dev libibus-1.0-dev
mkdir build && cd build
cmake .. -G Ninja -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local
ninja
sudo ninja install