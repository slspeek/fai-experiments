#!/bin/bash
apt-key adv --keyserver keyserver.ubuntu.com --recv-key D880C8E4
echo 'deb http://download.opensuse.org/repositories/shells:/fish:/release:/2/Debian_7.0/ ./' > /etc/apt/sources.list.d/fish-shell.list
apt-get update
apt-get install fish
