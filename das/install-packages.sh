#!/bin/bash


TMPFILE=$(mktemp)

fai-class /srv/fai/config/class $TMPFILE

classes=$(cat $TMPFILE) FAI_ROOT=/ install_packages
