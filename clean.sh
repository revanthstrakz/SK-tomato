echo " "
echo "Started Cleaning Kernel Sources from AzurE Oreo" 
export CROSS_COMPILE=/home/panchajanya/Kernel/Toolchains/aarch64-linux-android-7.2.1-uber/bin/aarch64-linux-android-
export ARCH=arm64
export SUBARCH=arm64
make clean && make mrproper
echo "Started Cleaning Anykernel Sources for AzurE Oreo"
rm -rf anykernel/dt.img
echo "  CLEAN   dt.img"
rm -rf anykernel/zImage
echo "  CLEAN   zImage"
