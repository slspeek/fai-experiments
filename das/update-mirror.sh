#!/bin/bash
#
LOCATION=/home/debian-mirrors

echo
echo "`basename $0`: Upgrading Debian security repository ..."
debmirror  -v \
  $LOCATION/debian-security/ \
    --no-check-gpg\
    -p \
    --nosource \
    --exclude=-dbg_* \
    --host=security.debian.org \
    --root=debian-security/ \
    --method=http \
    --arch=i386,amd64,powerpc \
    --section=main,contrib,non-free \
    --dist=jessie/updates
echo "`basename $0`: Upgrading Debian security repository: Done."

##
echo
echo "`basename $0`: Upgrading Debian default repository ..."
debmirror  -v \
   $LOCATION/debian/ \
   -p \
    --no-check-gpg\
  --nosource \
   --host=dl.xs4all.nl \
   --root=pub/mirror/debian \
   --method=http \
  --arch=i386,amd64,powerpc\
   --section=main,contrib,non-free,main/debian-installer \
   --dist=jessie\
   --getcontents
echo "`basename $0`: Upgrading Debian default repository: Done."
echo

echo "`basename $0`: Upgrading Debian multimedia repository ..."
debmirror  -v \
   $LOCATION/multimedia/ \
   -p \
    --no-check-gpg\
  --nosource \
   --host=www.deb-multimedia.org \
   --root=/ \
   --method=http \
  --arch=i386,amd64,powerpc\
   --section=main,non-free \
   --dist=jessie\
   --getcontents
echo "`basename $0`: Upgrading Debian multimedia repository: Done."
