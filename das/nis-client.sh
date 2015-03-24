#!/usr/bin/env bash
/etc/init.d/lightdm stop
if pgrep -u linux; then
  pkill -9 -u linux
fi
if id linux; then
	if deluser linux; then
		echo "Could not remove user linux"; exit 3;
	fi
fi
shadowconfig off
scp root@10.0.10.100:/etc/hosts /etc	
rm -rv /home/*
sed -i -e '/\/home/ d' /etc/fstab
echo "gnunas:/home /home nfs rw 0 0">>/etc/fstab
#mount -a
echo "+::::::">>/etc/passwd
echo "+:::">>/etc/group
apt-get install nis # domain is 'office'
