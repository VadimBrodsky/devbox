#!/usr/bin/env bash

echo ">>> Installing Tmux"
sudo apt-get install -yqq python-software-properties software-properties-common
sudo add-apt-repository -y ppa:pi-rho/dev
sudo apt-get update -qq
sudo apt-get install -yqq tmux
tmux -V
