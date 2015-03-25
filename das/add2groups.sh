#! /bin/bash
set -x
USER=${1:-tux}
for GROUP in audio video cdrom plugdev floppy sudo netdev scanner fuse lpadmin
do
  adduser $USER $GROUP
done

