export CROSS_COMPILE="/home/likeavengers/toolchain/bin/aarch64-linux-android-"
export ARCH=arm64 && export SUBARCH=arm64
export KBUILD_BUILD_USER="amog787"
export KBUILD_BUILD_HOST="SpaceX"

mkdir -p out
make O=out clean
make O=out mrproper
make O=out z2_plus_defconfig
make O=out -j$(nproc --all)
