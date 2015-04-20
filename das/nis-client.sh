#!/bin/bash

shadowconfig off
rm -rv /home/*
sed -i -e '/\/home/ d' /etc/fstab
echo "gnunas:/home /home nfs rw 0 0">>/etc/fstab
echo "+::::::">>/etc/passwd
echo "+:::">>/etc/group
