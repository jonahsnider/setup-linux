#!/usr/bin/env fish
# Install Node.js with Fast Node Manager

set node_version 15

# Install Node.js
fnm install $node_version
fnm use $node_version

# Install Yarn package manager
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update -qq
sudo apt install -yqq yarn

# Install global packages
yarn global add \
  nodejs/repl \
  @openapitools/openapi-generator-cli \
  @pizzafox/how \
  @squoosh/cli \
  live-server \
  micro \
  tldr \
  vdx \
  yo
