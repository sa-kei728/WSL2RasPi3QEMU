#!/bin/bash

currentpath=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)

qemu-system-aarch64 \
-m 1024 \
-M raspi3b \
-kernel ${currentpath}/kernel8.img \
-dtb ${currentpath}/bcm2710-rpi-3-b.dtb \
-drive format=raw,file=${currentpath}/2020-08-20-raspios-buster-arm64.img \
-append "console=ttyAMA0 root=/dev/mmcblk0p2 rw rootwait rootfstype=ext4 dwc_otg.fiq_fsm_enable=0" \
-nographic \
-device usb-net,netdev=net0 \
-netdev user,id=net0,hostfwd=tcp::2222-:22
