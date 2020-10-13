#!/usr/bin/env fish
# Install Rust and tools via cargo

# Install build tools
# Namely GCC for cargo (and also secretly Nim)
sudo apt install -yqq build-essential libssl-dev pkg-config

# Download installer
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > /tmp/rustup.sh
sh /tmp/rustup.sh -yq --no-modify-path

# Starship
cargo install starship
ln -s $SETUP_LINUX_INSTALL_DIR/config/starship/starship.toml ~/.config/starship.toml
