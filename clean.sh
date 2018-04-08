echo " "
echo "Started Cleaning Kernel Sources from AzurE Oreo"
rm -rf py2env
mkdir py2env && virtualenv2 py2env
source py2env/bin/activate
export CROSS_COMPILE=/home/panchajanya/Kernel/Toolchains/my-toolchain/bin/aarch64-linux-android-
export ARCH=arm64
export SUBARCH=arm64
make clean && make mrproper
echo "Started Cleaning Anykernel Sources for AzurE Oreo"
rm -rf anykernel/dt.img
echo "  CLEAN   dt.img"
rm -rf anykernel/zImage
echo "  CLEAN   zImage"
rm -rf py2env
