#!/bin/bash

# This script will symlink all of the dotfiles in this directory to home
# Run the command from within the dot files directory

rm -f ~/.vimrc
ln -s ~/.dotfiles/vimrc  ~/.vimrc

echo .vimrc has been symlinked.

rm -f ~/.slate.js
ln -s ~/.dotfiles/slate.js ~/.slate.js
echo .slate.js has been symlinked.

rm -f ~/.zshrc
ln -s ~/.dotfiles/zshrc ~/.zshrc
echo .zshrc has been symlinked.

if [[ ! -d ~/.vim/colors ]]; then
    mkdir -p ~/.vim/colors
    echo .vim/colors does not exist. Creating directory now.
fi

rm -f ~/.vim/colors/dark-meadow.vim
ln -s ~/.dotfiles/dark-meadow.vim ~/.vim/colors/dark-meadow.vim
echo Vim colorschemes have been symlinked.

if [[ ! -d ~/.vim/swap ]]; then
    mkdir -p ~/.vim/swap
    echo .vim/swap does not exist. Creating directory now.
fi

if [[ ! -d ~/.vim/backup ]]; then
    mkdir -p ~/.vim/backup
    echo .vim/backup does not exist. Creating directory now.
fi

if [[ ! -d ~/.vim/undo ]]; then
    mkdir -p ~/.vim/undo
    echo .vim/undo does not exist. Creating directory now.
fi

Download ZSH Plugins

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

echo Reloading Source Files

source ~/.zshrc
