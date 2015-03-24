#! /bin/bash
set -x
USER=${1:-tux}
for GROUP in audio cdrom plugdev floppy sudo netdev scanner fuse debian-tor lpadmin
do
  adduser $USER $GROUP
done

