#!/bin/bash

pwd=`pwd`
cd ~/.atom
cp -R config.cson init.coffee keymap.cson snippets.cson styles.less $pwd/config
apm list --installed --bare > $pwd/packages.list
