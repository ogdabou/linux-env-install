#!/bin/bash


mkdir -p ~/.IntelliJIdea2016.1/config/
cp -R config/* ~/.IntelliJIdea2016.1/config/

cd $TEMPDIR
mkdir -p intellij-ultimate
wget -nc -O intellij-ultimate.tar.gz https://download.jetbrains.com/idea/ideaIU-2016.2.5.tar.gz
tar -xvzf intellij-ultimate.tar.gz -C intellij-ultimate --strip 1

mkdir -p ~/apps/intellij-ultimate
cp -R intellij-ultimate/* ~/apps/intellij-ultimate

ln -sf ~/apps/intellij-ultimate/bin/idea.sh $BINDIR
