#!/bin/bash
set -e
WGET="wget --no-check-certificate -c"
cd /tmp
$WGET http://goo.gl/xfUUJ
mv xfUUJ /etc/X11/xorg.conf
