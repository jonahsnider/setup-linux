#!/usr/bin/env fish
# The entrypoint that calls all the other install scripts

set -gx SETUP_LINUX_INSTALL_DIR (pwd)

# GitHub CLI
# https://github.com/cli/cli/blob/trunk/docs/install_linux.md#debian-ubuntu-linux-apt
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages

echo "installing prerequisite packages"
sudo apt update -qq
sudo apt install -yqq build-essential libssl-dev pkg-config zip unzip gh
#                     gcc for cargo   rust needs these for  used by   GH
#                     and nim         linux compilation     sdkman
#                                                           and deno
echo "prerequisite packages installed"

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

fish $SETUP_LINUX_INSTALL_DIR/install/keybase.fish
echo "keybase configured"
echo "GPG keys configured"

fish $SETUP_LINUX_INSTALL_DIR/install/sdkman.fish
echo "sdkman & fish integration configured"
echo "java installed"
echo "gradle installed"
