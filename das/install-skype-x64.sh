#!/bin/bash
VERSION=1.4.2
cd /var/tmp
wget -c http://download.skype.com/linux/skype-debian_4.3.0.37-1_i386.deb
dpkg --add-architecture i386
dpkg -i skype-debian_4.3.0.37-1_i386.deb
apt-get install -f
