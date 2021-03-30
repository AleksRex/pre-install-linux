#!/bin/bash

mount /dev/sda3 /mnt
btrfs su cr /mnt/@
btrfs su cr /mnt/@home
btrfs su cr /mnt/@var
btrfs su cr /mnt/@snapshots
umount /mnt
mount -o noatime,compress=lzo,space_cache,subvol=@ /dev/sda3 /mnt
mkdir -p /mnt/boot/efi
mkdir -p /mnt/{home,var,.snapshots}
mount -o noatime,compress=lzo,space_cache,subvol=@home /dev/sda3 /mnt/home
mount -o noatime,compress=lzo,space_cache,subvol=@var /dev/sda3 /mnt/var
mount -o noatime,compress=lzo,space_cache,subvol=@snapshots /dev/sda3 /mnt/.snapshots
mount /dev/sda2 /mnt/boot/efi
