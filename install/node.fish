#!/usr/bin/env fish
# Install Node.js with Fast Node Manager

set node_version 16

# Install Node.js
fnm install $node_version
fnm use $node_version

# Install package managers
corepack prepare --all
corepack enable

npm config set prefix '~/.npm-global'

# Install global packages
yarn global add \
  @openapitools/openapi-generator-cli \
  @squoosh/cli \
  heroku \
  how-cli \
  live-server \
  micro \
  nodejs/repl \
  turbo \
  vdx \
  yo
