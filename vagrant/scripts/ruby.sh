#!/usr/bin/env bash

echo ">>> Installing Ruby $1"
sudo -H -u vagrant bash -i -c "rbenv install $1"
sudo -H -u vagrant bash -i -c "rbenv rehash"
sudo -H -u vagrant bash -i -c "rbenv global $1"

# Disable Documentation for Gems
echo "gem: --no-ri --no-rdoc" > ~/.gemrc

echo ">>> Installing Gems $2"
sudo -H -u vagrant bash -i -c "gem install $2"
