#!/bin/bash

HOST=$1

PXECONFIG=$(fai-chboot -u nfs://10.0.40.2/srv/fai/config -IFv $HOST 2>&1|tail -1|cut -d' ' -f3)
sed -i -e 's%/srv/fai/nfsroot%10.0.40.2:/srv/fai/nfsroot:vers=3%' $PXECONFIG
