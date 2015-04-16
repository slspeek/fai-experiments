#!/usr/bin/env bash

if id tux; then
	if deluser tux; then
		echo "Could not remove user tux"; exit 3;
	fi
fi
shadowconfig off
rm -rv /home/*
sed -i -e '/\/home/ d' /etc/fstab
echo "gnunas:/home /home nfs rw 0 0">>/etc/fstab
echo "+::::::">>/etc/passwd
echo "+:::">>/etc/group
