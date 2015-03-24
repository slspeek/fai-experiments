#!/bin/bash
cp -v --backup=numbered /etc/rc.local /etc/rc.local.bak
:>/etc/rc.local
echo "ln -s /dev/sr0 /dev/dvd" > /etc/rc.local
echo "exit 0" >> /etc/rc.local
