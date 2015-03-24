#!/bin/bash
OFFICE_NO=$1
echo office${OFFICE_NO}>/etc/hostname
sed -i -e "s/dhcp/static\naddress 10.0.10.1${OFFICE_NO}\nnetmask 255.255.255.0\ngateway 10.0.10.2/;s/allow-hotplug eth\(.\)/allow-hotplug eth\1\nauto eth\1/" /etc/network/interfaces

apt-get update && apt-get install --yes --force-yes openssh-server
sed -i -e '/Timed/ d; /Auto/ d' /etc/gdm/gdm.conf
