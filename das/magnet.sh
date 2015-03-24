#!/bin/bash
XDG_SCRIPT=/usr/bin/xdg-open
if ! grep -q MAGNET_APPLICATION $XDG_SCRIPT; then
  (head -726 $XDG_SCRIPT; cat /root/debianamsterdam/scripts/install/usr/local/bin/xdg-extension.txt; tail -45 $XDG_SCRIPT)>/tmp/xdg-open;
  mv /tmp/xdg-open /usr/bin;
  chmod +x $XDG_SCRIPT;
fi
