#!/bin/bash
cd /srv/fai/config
git pull origin jessie
cd /srv/fai/config/das
install -v *.sh /usr/local/bin
cp -v xdg-extenstion.txt /usr/local/bin
cp -v --backup=numbered sources.list /etc/apt
cd /srv/fai/config
cp -vR skel /etc
