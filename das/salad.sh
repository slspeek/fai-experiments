#!/bin/bash
if ! which mpg123; then
  sudo apt-get update && sudo apt-get install --yes --force-yes mpg123
fi

mpg123 -@ http://www.somafm.com/groovesalad.pls
