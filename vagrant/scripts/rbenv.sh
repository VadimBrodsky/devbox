#!/usr/bin/env bash

echo ">>> Installing rbenv"

# https://github.com/sstephenson/rbenv#installation
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc

# Restart Shell
# exec $SHELL

# Test Rbenv
# type rbenv #=> "rbenv is a function"

echo ">>> Installing Ruby Build"
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

