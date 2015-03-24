#!/usr/bin/env bash
if pgrep lightdm; then
  pkill -9 lightdm;
fi

if pgrep -u tux; then
  pkill -9 -u tux
fi

deluser tux

tar cvzf /home/tux-$(date +"%Y%m%d.%H.%M.%S").tar.gz /home/tux 

rm -rf /home/tux

adduser tux

add2groups.sh tux
