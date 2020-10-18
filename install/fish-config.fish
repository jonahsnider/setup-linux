#!/usr/bin/env fish

# Make fish's config file execute the one in here
echo source $SETUP_LINUX_INSTALL_DIR/config/fish/config.fish > ~/.config/fish/config.fish

# Link functions directory
ln -s $SETUP_LINUX_INSTALL_DIR/config/fish/functions ~/.config/fish/functions

chsh -s (which fish)
