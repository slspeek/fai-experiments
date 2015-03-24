#!/usr/bin/env bash
apt-get --yes --force-yes install mercurial
cd /root
hg clone --insecure https://code.google.com/p/debianamsterdam/ 
sh /root/debianamsterdam/scripts/install/usr/local/bin/update-debianamsterdam.sh
