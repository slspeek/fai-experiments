#/bin/bash
WGET="wget -c --no-check-certificate"
mkdir -p /usr/local/share/wallpapers
cd /tmp
$WGET https://sites.google.com/site/gnuwerkinstructies/home/wallpapers_part_01.tar.bz2
$WGET https://sites.google.com/site/gnuwerkinstructies/home/wallpapers_part_02.tar.bz2
$WGET https://sites.google.com/site/gnuwerkinstructies/home/wallpapers_part_03.tar.bz2
$WGET https://sites.google.com/site/gnuwerkinstructies/home/wallpapers_part_04.tar.bz2
tar xvjf wallpapers_part_01.tar.bz2 -C /usr/local/share/wallpapers
tar xvjf wallpapers_part_02.tar.bz2 -C /usr/local/share/wallpapers
tar xvjf wallpapers_part_03.tar.bz2 -C /usr/local/share/wallpapers
tar xvjf wallpapers_part_04.tar.bz2 -C /usr/local/share/wallpapers
