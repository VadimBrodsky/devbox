#!/usr/bin/env bash

echo ">>> Cloning dotfiles"
mkdir ~/code && cd ~/code
git clone https://github.com/VadimBrodsky/dotfiles.git


echo ">>> Setting symlinks"
ln -s ~/code/dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/code/dotfiles/git/gitignore ~/.gitignore
ln -s ~/code/dotfiles/vimrc ~/.vimrc
ln -s ~/code/dotfiles/gvimrc ~/.gvimrc
ln -s ~/code/dotfiles/vim ~/.vim
ln -s ~/code/dotfiles/tmux/tmux.conf ~/.tmux.conf
