#!/bin/bash -e


TMPFILE=$(mktemp)
mkdir -p /tmp/fai
touch /tmp/fai/status.log

fai-class /srv/fai/config/class $TMPFILE
FAI=/srv/fai/config classes=$(cat $TMPFILE) FAI_ROOT=/ install_packages
