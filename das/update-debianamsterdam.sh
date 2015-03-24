#!/bin/bash
cd /root/debianamsterdam
hg pull -u --insecure
cd /root/debianamsterdam/scripts/install/usr/local/bin
install -v *.sh /usr/local/bin
cp -v xdg-extenstion.txt /usr/local/bin
cd /root
cp -v --backup=numbered /root/debianamsterdam/scripts/install/etc/apt/sources.list /etc/apt
cp -v --backup=numbered /root/debianamsterdam/scripts/install/etc/adduser.conf /etc/
cp -vR /root/debianamsterdam/scripts/install/etc/skel /etc
