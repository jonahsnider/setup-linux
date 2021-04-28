#!/usr/bin/env fish
# Install Node.js with Fast Node Manager

set node_version 15

# Install Node.js
fnm install $node_version
fnm use $node_version

# Install Yarn package manager
npm install -g yarn

# Install global packages
yarn global add \
  nodejs/repl \
  @openapitools/openapi-generator-cli \
  @jonahsnider/how \
  @squoosh/cli \
  heroku \
  live-server \
  micro \
  tldr \
  vdx \
  yo
