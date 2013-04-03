#!/bin/bash

# Install dotfiles
for symlink in bashrc gitconfig vimrc zshrc
do
	mv ~/.$symlink ~/.$symlink.bck
	ln -s $PWD/$symlink ~/.$symlink
done

# Install zsh-syntax-highlighting plugin
ln -s $PWD/zsh-plugins/zsh-syntax-highlighting ~/.oh-my-zsh/plugins
