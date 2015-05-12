#! /bin/bash
set -x
USER=${1:-tux}
for GROUP in audio video cdrom plugdev dip floppy sudo netdev scanner fuse bluetooth lpadmin
do
  adduser $USER $GROUP
done

