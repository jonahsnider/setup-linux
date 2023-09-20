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

#region Python
fish_add_path -g ~/.poetry/bin
#endregion
