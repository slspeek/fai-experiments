#!/bin/bash
apt-get remove --purge 'nvidia*'
rm /etc/X11/xorg.conf.d/20-nvidia.conf
