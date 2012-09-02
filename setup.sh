#!/bin/bash

git submodule init
git submodule update

for dotfile in .vimrc .bashrc .bash_profile
do
  rm -fr ~/$dotfile
  ln -vnfs $PWD/$dotfile ~/$dotfile
done
