#!/usr/bin/env bash

# $URL: http://10.0.20.93/repos/scripts/trunk/install/usr/local/bin/xconfig.sh $
# $Rev: 694 $
# $Date: 2010-09-23 12:25:56 +0200 (do, 23 sep 2010) $

#
# Copyright 2005,2006,2007 Stichting Het Juttersdok
#

#
# Let X configure itself.
#
# Shutdown display manager
/etc/init.d/lightdm stop

#Backup old config
(cd /etc/X11 && cp xorg.conf xorg.conf.bak)

#Let X do its job
X -configure

#Copy the result
cp /root/xorg.conf.new /etc/X11/xorg.conf

#Catch a common mistake
sed -i -e 's|/dev/mouse|/dev/input/mice|' /etc/X11/xorg.conf

#Try it out
/etc/init.d/lightdm restart

