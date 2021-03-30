#!/bin/bash

mkfs.fat -F32 /dev/sda2
mkfs.btrfs -f /dev/sda3
