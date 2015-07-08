#!/bin/bash
editor.sh
inittab-mod.sh
add2groups.sh
wallpapers.sh
auto-login.sh
if test $(uname -m) =  "i686" || test $(uname -m) = "x86_64" ; then
  chromium.sh
fi
install-golang.sh
install-apod.sh

