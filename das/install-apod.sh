#!/bin/bash
cd /var/tmp
export GOPATH=/var/tmp
go get github.com/slspeek/apod-bg
install bin/apod-bg /usr/local/bin
