#!/usr/bin/env bash

echo ">>> Installing NVM"
# https://github.com/creationix/nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash

# exec $SHELL

# This enables NVM without a logout/login
export NVM_DIR="/home/vagrant/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


echo ">>> Installing Node"
nvm install stable
nvm alias default stable

## Usage
# nvm install 5.0
# nvm use 5.0


echo ">>> Installing NPM Modules"
npm install -g $1
