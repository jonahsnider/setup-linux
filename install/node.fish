#!/usr/bin/env fish
# Install Node.js

set node_version 14

# Install Node.js
curl -sL "https://deb.nodesource.com/setup_"node_version".x" | sudo -E bash -
sudo apt-get install -yqq nodejs

# Install Yarn package manager
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update -qq
sudo apt install -yqq yarn
