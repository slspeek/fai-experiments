#!/bin/bash
WGET="wget --timeout 10 --tries 1"
# For Zeeburgerpad
if $WGET http://10.0.20.181/debian; then
  sed -i -e '/10.0.20.181/ s/^#//' /etc/apt/sources.list
  apt-get update
fi
