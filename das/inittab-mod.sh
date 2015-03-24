#!/bin/bash

sed -i -e 's/shutdown -t1 -a -r now/shutdown -t1 -a -h now/' /etc/inittab
