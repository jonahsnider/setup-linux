#!/usr/bin/env fish
# The entrypoint that calls all the other install scripts

set -U SETUP_LINUX_INSTALL_DIR (pwd)/..

fish ./fish-config.fish
echo "fish configured"

fish ./sdkman.fish
echo "sdkman & fish integration configured"
echo "java installed"
echo "gradle installed"

fish ./rust.fish
echo "rust installed"
echo "starship configured"

fish ./node.fish
echo "node installed"
echo "yarn installed"

fish ./git.fish
echo "git configured"

fish ./nim.fish
echo "nim installed"
