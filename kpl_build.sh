#https://www.raspberrypi.com/documentation/computers/linux_kernel.html#building-the-kernel-locally
KERNEL=kernel8
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- bcm2711_defconfig
make menuconfig
make -j4 ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- Image modules dtbs
