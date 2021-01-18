#!/usr/bin/env bash

echo "cd'ing into home directory"
cd ~

if [[ -f ".bashrc" ]]; then
	echo "Saving old ~/.bashrc file in ~/.bashrc.back"
	mv .bashrc .bashrc.back
fi
ln -s ~/workspace/dot-files/bashrc .bashrc
source .bashrc

if [[ -f ".gitconfig" ]]; then
	echo "Saving old ~/.gitconfig file in ~/.gitconfig.back"
	mv .gitconfig .gitconfig.back
fi
ln -s ~/workspace/dot-files/gitconfig .gitconfig
