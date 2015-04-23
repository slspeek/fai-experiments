#!/bin/bash
mkdir /tmp/tux
cd /tmp/tux
git clone https://github.com/gnudok/verkoop-voorblad.git
cd verkoop-voorblad
make view label
cp dist/*.pdf ~
