#!/usr/bin/env bash

echo ">>> Installing Ruby $1"
rbenv install $1
rbenv global $1

# Disable Documentation for Gems
echo "gem: --no-ri --no-rdoc" > ~/.gemrc

echo ">>> Installing Gems $2"
gem install $2

rbenv rehash
