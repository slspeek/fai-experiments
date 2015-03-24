#!/bin/bash
VERSION=3.6.5
ARCHIVE=tor-browser-linux64-${VERSION}_nl.tar.xz
cd /var/tmp
wget -c https://www.torproject.org/dist/torbrowser/$VERSION/$ARCHIVE
tar xvJf $ARCHIVE -C /usr/local/
cd /usr/local/bin
ln -s /usr/local/tor-browser_nl/start-tor-browser 
