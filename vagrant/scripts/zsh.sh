#!/usr/bin/env bash

echo ">>> Installing ZSH"
sudo apt-get install zsh -yqq
sudo sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
