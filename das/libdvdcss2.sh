#!/bin/bash
cp /etc/apt/sources.list /etc/apt/sources.list.bak
sed -i -e '/multimedia/ s/#//' /etc/apt/sources.list
apt-get update
apt-get install libdvdcss2
cp /etc/apt/sources.list.bak /etc/apt/sources.list
apt-get update
