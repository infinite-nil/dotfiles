#!/bin/bash

if [ "$1" == "--prepare" ]; then
	echo "Installing dependencies"

	sudo apt install git vim curl zsh -qq
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
	echo "Setup"

	ln -s ~/dotfiles/terminal/.bashrc ~/.bashrc
	ln -s ~/dotfiles/terminal/.zshrc ~/.zshrc
fi

