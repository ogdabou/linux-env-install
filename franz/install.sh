#!/bin/bash

set -x

cd $TEMPDIR
mkdir -p franz
wget -nc -O franz.tar.gz https://github.com/meetfranz/franz-app/releases/download/4.0.4/Franz-linux-x64-4.0.4.tgz
tar -xvzf franz.tar.gz -C $TEMPDIR/franz
mkdir -p ~/apps/franz
cp  -R franz/* ~/apps/franz
ln -sf ~/apps/franz/Franz $BINDIR