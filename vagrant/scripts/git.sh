#!/usr/bin/env bash

echo ">>> Installing Git"
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update -qq
sudo apt-get install git -yqq
git --version
