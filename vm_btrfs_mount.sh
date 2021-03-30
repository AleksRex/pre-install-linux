#!/bin/bash

mount /dev/vda3 /mnt
btrfs su cr /mnt/@
btrfs su cr /mnt/@home
btrfs su cr /mnt/@var
btrfs su cr /mnt/@snapshots
umount /mnt
mount -o noatime,compress=lzo,space_cache,subvol=@ /dev/vda3 /mnt
mkdir -p /mnt/boot/efi
mkdir -p /mnt/{home,var,.snapshots}
mount -o noatime,compress=lzo,space_cache,subvol=@home /dev/vda3 /mnt/home
mount -o noatime,compress=lzo,space_cache,subvol=@var /dev/vda3 /mnt/var
mount -o noatime,compress=lzo,space_cache,subvol=@snapshots /dev/vda3 /mnt/.snapshots
mount /dev/vda1 /mnt/boot/efi
