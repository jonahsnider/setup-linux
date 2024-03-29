#!/usr/bin/env fish
# Install Rust and tools via cargo

# Download installer
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > /tmp/rustup.sh
sh /tmp/rustup.sh -yq --no-modify-path

# Starship
$HOME/.cargo/bin/cargo install starship fnm git-delta
ln -s $SETUP_LINUX_INSTALL_DIR/config/starship/starship.toml ~/.config/starship.toml
