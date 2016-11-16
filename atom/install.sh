#!/bin/bash
set -x
wget -nc -O $TEMPDIR/atom.deb https://atom.io/download/deb 
dpkg -i $TEMPDIR/atom.deb

cp -R config/* ~/.atom/
apm install --packages-file packages.list