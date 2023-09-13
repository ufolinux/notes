#!/bin/bash

# Variables

export LD_LIBRARY_PATH=/lib:/lib64:/usr/lib:/usr/lib32:/usr/lib64
export PATH=/bin:/sbin:/usr/bin:/usr/sbin

export RPATH=/mnt/ufolinux

# Pre mounting for sys,proc,dev,pts and temp
if [ ! -d $RPATH/dev/pts ]; then
	echo "Mounting needed things for the session"
	sudo mount proc $RPATH/proc -t proc -o nosuid,noexec,nodev
	sudo mount sys $RPATH/sys -t sysfs -o nosuid,noexec,nodev,ro
	sudo mount dev $RPATH/dev -t devtmpfs -o mode=0755,nosuid
	sudo mount devpts $RPATH/dev/pts -t devpts -o mode=0620,gid=5,nosuid,noexec
	sudo mount tmp $RPATH/tmp -t tmpfs -o mode=1777,strictatime,nodev,nosuid
else
	echo "Everything is already mounted from earlier session."
fi

sudo chroot /mnt/ufolinux /bin/bash
