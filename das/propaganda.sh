#!/bin/bash
mkdir -p /home/media
chown -R tux.tux /home/media
cd /home/media
files=( 'Weapons_of_the_Geek.webm' 'Nicolas Jaar Boiler Room NYC DJ Set at Clown & Sunset Takeover-IUjWumGIqe8.mp4' 'Function Boiler Room Berlin Live Set-bC9_OKu6nBQ.mp4' 'fusion-xbmc.tar.bz2' 'tails-i386-1.1.1.iso' 'TEDxGE2014_Stallman05_HQ.ogg' 'TermsAndConditionsMayApply.mp4' 'The Year in Crypto [30c3]-HJB1mYEZPPA.mp4' 'tor-browser-linux64-3.6.4_nl.tar.xz')

for f in "${files[@]}"; do
	wget -c http://10.0.20.181/gnu/"$f";
done
