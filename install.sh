#!/bin/bash

if [ "$1" == "--prepare" ]; then
	echo "Installing dependencies"

	sudo apt install git vim curl zsh -qq
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
	echo "Setup"

	ln -sf ~/dotfiles/terminal/.bashrc ~/.bashrc
	ln -sf ~/dotfiles/terminal/.zshrc ~/.zshrc
	ln -sf ~/dotfiles/vim/.vimrc ~/.vimrc
fi

