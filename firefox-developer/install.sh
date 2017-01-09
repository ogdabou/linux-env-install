#!/bin/bash


#!/bin/bash

set -x

cd $TEMPDIR
dir=firefox-developer
mkdir -p $dir
wget -nc -O $dir.tar.bz2 https://archive.mozilla.org/pub/firefox/nightly/latest-mozilla-central-l10n/firefox-53.0a1.fr.linux-x86_64.tar.bz2
tar -xvjf $dir.tar.bz2 -C $TEMPDIR/$dir --strip 1
mkdir -p ~/apps/$dir
ls
cp  -R $dir/* ~/apps/$dir
echo $BINDIR
ln -s ~/apps/$dir/firefox $BINDIR/$dir
