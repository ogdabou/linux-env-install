#/bin/bash

#!/bin/bash


#!/bin/bash

set -x

cd $TEMPDIR
dir=gikraken
mkdir -p $dir
wget -nc -O $dir.deb https://release.gitkraken.com/linux/gitkraken-amd64.deb
dpkg -i $dir.deb
