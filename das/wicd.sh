#!/bin/bash
apt-get --yes --force-yes --purge remove network-manager
apt-get --yes --force-yes install wicd
