#!/bin/bash

# This script will symlink all of the dotfiles in this directory to the $HOME

rm -f ~/.vimrc
ln -s ~/.dotfiles/dotfiles/vimrc ~/.vimrc
echo .vimrc has been symlinked.

rm -f ~/.slate.js
ln -s ~/.dotfiles/dotfiles/slate.js ~/.slate.js
echo .slate.js has been symlinked.

rm -f ~/.zshrc
ln -s ~/.dotfiles/dotfiles/zshrc ~/.zshrc
echo .zshrc has been symlinked.

if [[ ! -d ~/.vim/colors ]]; then
    mkdir -p ~/.vim/colors
    echo .vim/colors does not exsist. Creating directory now.
fi

rm -f ~/.vim/colors/dark-meadow.vim
ln -s ~/.dotfiles/dotfiles/dark-meadow.vim ~/.vim/colors/dark-meadow.vim
echo Vim colorschemes have been symlinked.
