#!/bin/bash

# Unmount all mounted paths of the chroot
export RPATH=/mnt/ufolinux

sudo umount -l $RPATH/dev
sudo umount -l $RPATH/sys
sudo umount -l $RPATH/proc
sudo umount -l $RPATH/dev/pts
sudo umount -l $RPATH/tmp
