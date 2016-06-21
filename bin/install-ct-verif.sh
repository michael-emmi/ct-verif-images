#!/bin/bash

PREFIX=/usr/local
TMP=/tmp
PACKAGES="ruby"
BAM_REPO=https://github.com/michael-emmi/bam-bam-boogieman.git

apt-get update
apt-get install -y ${PACKAGES}

cd ${TMP}
git clone ${BAM_REPO}
cd bam-bam-boogieman
gem build bam-bam-boogieman.gemspec
gem install bam-bam-boogieman-*.gem

apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ${TMP}/*
