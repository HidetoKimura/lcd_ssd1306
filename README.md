# lcd_ssd1306

# build kernel

In pc
~~~~
sudo apt install crossbuild-essential-arm64
git clone --depth=1 --branch rpi-6.1.y https://github.com/raspberrypi/linux
cd linux
export KERNEL=kernel8
export ARCH=arm64
export CROSS_COMPILE=aarch64-linux-gnu- 
export INSTALL_MOD_PATH=../
make bcm2711_defconfig
make -j4 Image modules dtbs
make modules_install
~~~~

# build LKM

In pc
~~~~
export KERNEL_SRC=<kernel path>
git clone https://github.com/HidetoKimura/lcd_ssd1306.git
cd lcd_ssd1306
make
scp  lcd-ssd1306.ko rpi@raspberrypi.local:
~~~~

In rpi
~~~~
insmod lcd-ssd1306.ko 
rmmod lcd-ssd1306.
~~~~
