#!/bin/bash

# Install dotfiles
for symlink in bashrc gitconfig vimrc zshrc aliases
do
	mv ~/.$symlink ~/.$symlink.bck
	ln -s "$PWD/$symlink" ~/.$symlink
done
