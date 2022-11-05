#!/bin/bash

# Download RasPi3 Image
wget http://ftp.jaist.ac.jp/pub/raspberrypi/raspios_arm64/images/raspios_arm64-2020-08-24/2020-08-20-raspios-buster-arm64.zip
unzip 2020-08-20-raspios-buster-arm64.zip
rm 2020-08-20-raspios-buster-arm64.zip

# store kernel.img and devicetree
mkdir -p ./raspiimg
loopdevice=$(sudo losetup --show -fP 2020-08-20-raspios-buster-arm64.img)
sudo mount ${loopdevice}p1 ./raspiimg
cp ./raspiimg/kernel8.img ./
cp ./raspiimg/bcm2710-rpi-3-b.dtb ./
sudo umount ./raspiimg
sudo losetup -d ${loopdevice}
rm -rf ./raspiimg

# Image Resize for 4GB
qemu-img resize 2020-08-20-raspios-buster-arm64.img 4G
