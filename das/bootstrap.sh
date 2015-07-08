#!/usr/bin/env bash
apt-get --yes --force-yes install git fai-client ca-certificates
mkdir -p /srv/fai
cd /srv/fai
git clone https://github.com/slspeek/fai-experiments.git config
cd /srv/fai/config
git checkout jessie
sh das/update-debianamsterdam.sh
