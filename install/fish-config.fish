#!/usr/bin/env fish

# Move old folder to avoid conflict
mv ~/.config/fish ~/.config/fish.bak
# Link fish directory
ln -s $SETUP_LINUX_INSTALL_DIR/config/fish ~/.config/fish

chsh -s (which fish)
