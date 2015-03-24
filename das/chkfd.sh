#!/usr/bin/env bash

# $URL: http://10.0.20.93/repos/scripts/trunk/install/usr/local/bin/chkfd.sh $
# $Rev: 694 $
# $Date: 2010-09-23 12:25:56 +0200 (do, 23 sep 2010) $

#
# Copyright 2005,2006,2007 Stichting Het Juttersdok
#

#
# Check floppy drive and/or floppy disk
#

if mount | grep /dev/fd0; then
	echo "Floppy is mounted, exiting..."
	exit 3
fi

TMPFILE=`mktemp -p /var/tmp  -t flop_test.XXXXXX `||  exit 1

if id|grep floppy >/dev/null ; then
	
	dd if=/dev/urandom of=$TMPFILE ibs=1k obs=1k count=1440
	echo "Testing write..."
	if dd if=$TMPFILE of=/dev/fd0 ibs=1k obs=1k count=1440 ; then
		echo "Verifying..."
		if dd if=/dev/fd0 ibs=1k obs=1k count=1440 | cmp -s - $TMPFILE ; then
			echo "Floppy is ok, creating file system"
			if /sbin/mkfs -t vfat /dev/fd0 >/dev/null ; then
				echo "Done."
			fi
		else
			echo "Floppy is not ok, unable to verify." 
			exit 2
		fi
	else
		echo "Floppy is not ok, unable to write." 
		exit 4
	fi

	rm $TMPFILE
else
	echo "User has not enough rights to write to floppy.";
	exit 5
fi
exit 0
