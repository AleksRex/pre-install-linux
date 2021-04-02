#!/bin/bash

mkfs.fat -F32 /dev/sda1
mkfs.btrfs -f /dev/sda2
