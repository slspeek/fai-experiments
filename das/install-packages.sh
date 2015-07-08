#!/bin/bash -e


TMPFILE=$(mktemp)

fai-class /srv/fai/config/class $TMPFILE

mkdir -p /tmp/fai
touch /tmp/fai/status.log
classes=$(cat $TMPFILE) FAI_ROOT=/ install_packages
