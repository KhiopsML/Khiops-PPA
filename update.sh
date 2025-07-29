#!/bin/bash

set -e
set -v

export KEYNAME=khiops.team@orange.com


cd ./ubuntu/

# Packages & Packages.gz
dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages

# Release, Release.gpg & InRelease
apt-ftparchive release . > Release
gpg --default-key "${KEYNAME}" -abs -o - Release > Release.gpg
gpg --default-key "${KEYNAME}" --clearsign -o - Release > InRelease

# Sign
gpg --yes --clearsign -o InRelease Release
gpg --yes -abs -o Release.gpg Release 

