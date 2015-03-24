#!/bin/bash
lscpu
echo
free -m
echo
dmesg|grep GB
echo
lspci|grep -i vga
