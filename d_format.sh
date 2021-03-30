#!/bin/bash

mkfs.fat -F32 /dev/sda2
mkfs.btrfs /dev/sda3
