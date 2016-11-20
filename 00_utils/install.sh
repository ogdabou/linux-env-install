#!/bin/bash

set -x
mkdir -p $APPSDIR
mkdir -p $GITDIR
mkdir -p $BINDIR

sudo apt-get update

# NODEJS
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install -g web-ext gulp-cli

# JAVA
wget -nc -O $TEMPDIR/java-8-oracle.tar.gz --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u112-b15/jdk-8u112-linux-x64.tar.gz
sudo mkdir -p /usr/lib/jvm/java-8-oracle
tar -xvzf $TEMPDIR/java-8-oracle.tar.gz -C /usr/lib/jvm/java-8-oracle --strip 1
echo "export JAVA_HOME=/usr/lib/jvm/java-8-oracle" >> ~/.bashrc
export JAVA_HOME=/usr/lib/jvm/java-8-oracle

# MAVEN
sudo apt-get install maven


# ENV VARIABLES ARE INJECTED IN ../setup.sh, should find a better way