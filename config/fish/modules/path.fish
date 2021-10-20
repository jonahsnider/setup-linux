# Local binaries
fish_add_path -g ~/.local/bin

#region macOS
if test -d /Applications
  fish_add_path -g /Applications
end
#endregion

#region Nix
if test -d ~/.nix-profile/
  fenv source ~/.nix-profile/etc/profile.d/nix.sh
end
#endregion

#region Go
# Add Go binaries to PATH
fish_add_path -g $GOPATH/bin $GOROOT/bin
#endregion

#region Rust
# Cargo binaries
fish_add_path -g ~/.cargo/bin
#endregion

#region Nim
fish_add_path -g ~/.nimble/bin
#endregion

#region Deno
fish_add_path -g $DENO_INSTALL/bin
#endregion

#region npm
fish_add_path -g ~/.npm-global/bin
#endregion

#region Yarn
# I could run this but Corepack + Yarn is slow (200ms):
# fish_add_path ~/.node/corepack/yarn/(corepack yarn --version)/bin
fish_add_path ~/.node/corepack/yarn/1.22.17/bin
#endregion

#region Python
fish_add_path -g ~/.poetry/bin
#endregion

