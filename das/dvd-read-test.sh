#!/bin/bash

DEVICE=${1:-/dev/dvd}

IMAGE=/home/tmp-knoppix-7.4.2.img

mkdir -p /tmp/fakemount

echo Waiting for drive to get ready...

while true;
do
	if mount $DEVICE /tmp/fakemount &> /dev/null; then
		umount $DEVICE &> /dev/null;
		echo Device ready, starting test.;
		break;
	fi
	sleep 5s;
done



if pv -tpreb -s 4258398208 $DEVICE| dd of=$IMAGE; then 
	MD5SUM=$(md5sum $IMAGE|cut -d' ' -f1)
	if ! [ "$MD5SUM" = "b1a7ae394f27eb7ce093e89fbfddf084" ]; then
		echo "Failure: got wrong md5sum: $MD5SUM";
		rm -v $IMAGE
		exit 1;
	else
		echo "Success: read back KNOPPIX 7.4.2 dvd and the checksum matches.";
	fi
else
	rm -v $IMAGE
	echo "Failure: dd returned an error";
	exit 2;
fi
rm -v $IMAGE
eject $DEVICE

