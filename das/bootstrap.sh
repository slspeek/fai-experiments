#!/usr/bin/env bash
apt-get --yes --force-yes install git fai-client
mkdir -p /srv/fai
cd /srv/fai
git clone https://github.com/slspeek/fai-experiments.git config
