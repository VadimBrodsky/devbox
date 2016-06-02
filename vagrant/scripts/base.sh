#!/usr/bin/env bash

echo "Setting Timezone & Locale to $2 & en_US.UTF-8"

sudo ln -sf /usr/share/zoneinfo/$2 /etc/localtime
sudo apt-get install -qq language-pack-en
sudo locale-gen en_CA.UTF-8
sudo update-locale LANG=en_US.UTF-8 LC_CTYPE=en_US.UTF-8


# Setting up Swap

# Disable case sensitivity
shopt -s nocasematch

if [[ ! -z $1 && ! $1 =~ false && $1 =~ ^[0-9]*$ ]]; then

    echo ">>> Setting up Swap ($1 MB)"

    # Create the Swap file
    fallocate -l $1M /swapfile

    # Set the correct Swap permissions
    chmod 600 /swapfile

    # Setup Swap space
    mkswap /swapfile

    # Enable Swap space
    swapon /swapfile

    # Make the Swap file permanent
    echo "/swapfile   none    swap    sw    0   0" | tee -a /etc/fstab

    # Add some swap settings:
    # vm.swappiness=10: Means that there wont be a Swap file until memory hits 90% useage
    # vm.vfs_cache_pressure=50: read http://rudd-o.com/linux-and-free-software/tales-from-responsivenessland-why-linux-feels-slow-and-how-to-fix-that
    printf "vm.swappiness=10\nvm.vfs_cache_pressure=50" | tee -a /etc/sysctl.conf && sysctl -p

fi

# Enable case sensitivity
shopt -u nocasematch

# Enable cachefilesd
echo "RUN=yes" > /etc/default/cachefilesd


# Build Dependencies
echo ">>> Installing Build Dependencies"
sudo apt-get install -yqq curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
