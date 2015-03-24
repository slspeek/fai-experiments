#!/bin/bash
sed -i -e '/jessie/ s/^#//' /etc/apt/sources.list
apt-get update
