#!/bin/bash
rmdir /opt
mkdir /usr/opt
ln -s /usr/opt /opt
source-mod.sh
install-fish.sh
re-add-tux.sh
install-essential.sh
install-nerd-to-have.sh
cp -v /root/debianamsterdam/scripts/install/etc/sudoers /etc
editor.sh
inittab-mod.sh
add2groups.sh
libdvdcss2.sh
wallpapers.sh
auto-login.sh
if test $(uname -m) =  "i686" || test $(uname -m) = "x86_64" ; then
  chromium.sh
fi
install-golang.sh
install-apod.sh

