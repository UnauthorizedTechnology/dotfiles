#!/bin/bash

# This script will symlink all of the dotfiles in this directory to the $HOME

rm -f ~/.vimrc
ln -s ~/.dotfiles/dotfiles/vimrc ~/.vimrc

rm -f ~/.slate.js
ln -s ~/.dotfiles/dotfiles/slate.js ~/.slate.js

rm -f ~/.zshrc
ln -s ~/.dotfiles/dotfiles/zshrc ~/.zshrc

if [[ ! -d ~/.vim/colors ]]; then
    mkdir -p ~/.vim/colors
fi

ln -s ~/.dotfiles/dotfiles/dark-meadow.vim ~/.vim/colors/dark-meadow.vim
