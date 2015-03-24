#!/bin/bash
sed -i -e '/deb-multimedia/ s/^#//' /etc/apt/sources.list
apt-get update
apt-get install --yes --force-yes xbmc
