#!/bin/bash
apt-get --yes --force-yes --purge remove cups
rm -rfv /etc/cups
apt-get --yes --force-yes install cups
