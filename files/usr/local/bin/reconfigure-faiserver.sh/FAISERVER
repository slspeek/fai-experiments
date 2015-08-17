#!/bin/bash

IPADDR=$1 
NETWORK=$2
OLDIPADDR=$3
OLDNETWORK=$4

SEDCMD="sed -i -e s/${OLDIPADDR}/$IPADDR/g;s/$OLDNETWORK/$NETWORK/g"

echo CMD: $SEDCMD

$SEDCMD /usr/local/bin/pxe{,-i386}.sh /etc/exports /etc/dhcp/dhcpd.conf /etc/network/interfaces /etc/hosts /etc/fai/apt/sources.list 


