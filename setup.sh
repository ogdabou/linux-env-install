#!/bin/bash
set -x

source ./env.sh

pwd=`pwd`
echo "starting from $pwd"

mkdir -p $pwd/temp

for dir in ./*/
do
	dir=${dir}
	cd $dir
  # first argument is this tools directory
	./install.sh $pwd
	cd $pwd
done;

add_to_path='export PATH=$PATH:'

echo $add_to_path$BINDIR >> ~/.zshrc
echo $add_to_path$BINDIR >> ~/.bashrc


echo "export JAVA_HOME=/usr/lib/jvm/java-8-oracle" >> ~/.zshrc

