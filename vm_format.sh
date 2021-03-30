#!/bin/bash

mkfs.fat -F32 /dev/vda1
mkswap /dev/vda2
swapon /dev/vda2
mkfs.btrfs /dev/vda3
