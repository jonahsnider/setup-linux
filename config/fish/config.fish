#region PATH
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
# Go installation root directory
set -gx GOROOT /usr/local/go
# Work directory
set -gx GOPATH $HOME/programming/go
# Add Go binaries to PATH
fish_add_path -g $GOPATH/bin $GOROOT/bin
#endregion

#region Rust
# Cargo binaries
fish_add_path -g ~/.cargo/bin
if set -q SETUP_LINUX_INSTALL
else
  # Change Node.js version with Fast Node Manager when directories changed and once on boot
  fnm env --use-on-cd | source
  # Silently fail
  fnm use > /dev/null 2>&- || :
end
#endregion

#region .NET
set -gx DOTNET_CLI_TELEMETRY_OPTOUT true
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
#endregion

#region General
set -gx EDITOR nano

# Register aliases
source (dirname (status --current-filename))/mnemonics.fish

#region GPG
# Fix the "gpg: error building skey array: Inappropriate ioctl for device" error
# Solution from https://github.com/keybase/keybase-issues/issues/1712#issuecomment-141226705
export GPG_TTY=(tty)
#endregion

#region custom env
set -gx NODE_ENV development
#endregion

#region Deno
set -gx DENO_INSTALL ~/.deno
fish_add_path -g $DENO_INSTALL/bin
#endregion

#region Python
# Use Python 3 by default
alias python=(which python3)
# Poetry
fish_add_path -g ~/.poetry/bin
#endregion

#region Yarn
# Alias Squoosh CLI
alias squoosh=squoosh-cli
# I could run this but Corepack + Yarn is slow (200ms):
# fish_add_path ~/.node/corepack/yarn/(corepack yarn --version)/bin
fish_add_path ~/.node/corepack/yarn/1.22.15/bin
#endregion

#region Secrets
# GitHub token
if test -f ~/.gh_token
  set -gx GITHUB_TOKEN (cat ~/.gh_token)
  set -gx HOMEBREW_GITHUB_API_TOKEN $GITHUB_TOKEN
end

# npm token
if test -f ~/.npm_token
  set -gx NPM_TOKEN (cat ~/.npm_token)
end
#endregion
#endregion

#region Prompt

# Remove the Fish greeting
set fish_greeting

# Starship shell prompt
starship init fish | source
#endregion
