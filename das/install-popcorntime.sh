#!/bin/bash
VERSION=0.3.7.1

ARCH=Linux32
if test $(uname -m) = x86_64 ; then
	ARCH=Linux64
fi
ARCHIVE=Popcorn-Time-${VERSION}-${ARCH}.tar.xz
URLBASE=https://get.popcorntime.io/build/$ARCHIVE
cd /tmp
wget -c $URLBASE
cd /usr/local/bin
tar --overwrite -xvJf /tmp/$ARCHIVE

to-jessie.sh
apt-get install libudev1
sed -i -e '/jessie/ s/\(.*\)/#\1/' /etc/apt/sources.list
apt-get update

