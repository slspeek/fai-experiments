#!/bin/bash
ARCH=386
if test $(uname -m) = x86_64 ; then
	ARCH=amd64
fi
cd /var/tmp
wget -c https://storage.googleapis.com/golang/go1.3.3.linux-${ARCH}.tar.gz
cd /usr/local/
tar xvzf /var/tmp/go1.3.3.linux-${ARCH}.tar.gz
cd /usr/local/bin
ln -s /usr/local/go/bin/go
ln -s /usr/local/go/bin/gofmt
ln -s /usr/local/go/bin/godoc

