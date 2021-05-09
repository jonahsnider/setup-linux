#!/usr/bin/env fish
# Install Node.js with Fast Node Manager

set node_version 16

# Install Node.js
fnm install $node_version
fnm use $node_version

npm config set prefix '~/.npm-global'

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
