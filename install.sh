#!/usr/bin/env bash

# Install dotfiles
for symlink in bashrc gitconfig vimrc zshrc aliases
do
	if [ -f ~/.${symlink} ]; then
		mv ~/.${symlink} ~/.${symlink}.bck
	fi
	ln -s "$PWD/${symlink}" ~/.${symlink}
done
