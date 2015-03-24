#!/bin/bash

echo 'deb http://debian.yacy.net ./' > /etc/apt/sources.list.d/yacy.list
apt-key advanced --keyserver pgp.net.nz --recv-keys 03D886E7
apt-get update
apt-get install --yes --force-yes openjdk-6-jre-headless yacy
