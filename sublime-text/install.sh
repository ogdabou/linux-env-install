#!/bin/bash
set -x
mkdir -p ~/.config/sublime-text-3/Packages/User/
sublime_dir=~/.config/sublime-text-3/Packages/User/
echo "Copying sublime files to " $sublime_dir
cp -f P* $sublime_dir
