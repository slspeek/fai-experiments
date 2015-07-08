#!/bin/bash


TMPFILE=$(mktemp)

fai-class /srv/fai/config/class $TMPFILE

touch /tmp/fai/status.log
classes=$(cat $TMPFILE) FAI_ROOT=/ install_packages
