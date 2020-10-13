#!/usr/bin/env fish
# The entrypoint that calls all the other install scripts

set -gx SETUP_LINUX_INSTALL_DIR (pwd)

fish $SETUP_LINUX_INSTALL_DIR/install/rust.fish
echo "rust installed"
echo "starship configured"

fish $SETUP_LINUX_INSTALL_DIR/install/deno.fish
echo "deno installed"

fish $SETUP_LINUX_INSTALL_DIR/install/node.fish
echo "node installed"
echo "yarn installed"

fish $SETUP_LINUX_INSTALL_DIR/install/git.fish
echo "git configured"

fish $SETUP_LINUX_INSTALL_DIR/install/nim.fish
echo "nim installed"

fish $SETUP_LINUX_INSTALL_DIR/install/fish-config.fish
echo "fish configured"

fish $SETUP_LINUX_INSTALL_DIR/install/sdkman.fish
echo "sdkman & fish integration configured"
echo "java installed"
echo "gradle installed"
