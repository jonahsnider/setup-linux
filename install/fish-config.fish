#!/usr/bin/env fish

# Make fish's config file execute the one in here
echo source $SETUP_LINUX_INSTALL_DIR/config/fish/config.fish > ~/.config/fish/config.fish

sudo chsh -s (which fish)
