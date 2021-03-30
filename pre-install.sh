#!/bin/bash

pacstrap /mnt base base-devel linux linux-firmware vim nano git intel-ucode
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
