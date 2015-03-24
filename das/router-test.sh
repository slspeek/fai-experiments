#!/bin/bash
IPNUMBER=$(sudo dhclient -v eth0 2>&1 |grep DHCPACK|cut -d' ' -f3)
xdg-open http://$IPNUMBER
