# Remove the Fish greeting
set fish_greeting

set -gx EDITOR nano

## GPG
# Fix the "gpg: error building skey array: Inappropriate ioctl for device" error
# Solution from https://github.com/keybase/keybase-issues/issues/1712#issuecomment-141226705
export GPG_TTY=(tty)

## Custom env
set -gx NODE_ENV development

## Deno
set -gx DENO_INSTALL ~/.deno
fish_add_path -g $DENO_INSTALL/bin

## Python
# Use Python 3 by default
alias python=(which python3)
# Poetry
fish_add_path -g ~/.poetry/bin

## Yarn
# Alias Squoosh CLI
alias squoosh=squoosh-cli
fish_add_path ~/.node/corepack/yarn/(corepack yarn --version)/bin

## Secrets
# GitHub token
if test -f ~/.gh_token
  set -gx GITHUB_TOKEN (cat ~/.gh_token)
  set -gx HOMEBREW_GITHUB_API_TOKEN $GITHUB_TOKEN
end

# npm token
if test -f ~/.npm_token
  set -gx NPM_TOKEN (cat ~/.npm_token)
end

### PATH
## Local binaries
fish_add_path -g ~/.local/bin

# macOS
if test -d /Applications
  fish_add_path -g /Applications
end

## Nix
if test -d ~/.nix-profile/
  fenv source ~/.nix-profile/etc/profile.d/nix.sh
end

## Go
# Go installation root directory
set -gx GOROOT /usr/local/go
# Work directory
set -gx GOPATH $HOME/programming/go
# Add Go binaries to PATH
fish_add_path -g $GOPATH/bin $GOROOT/bin

## Rust
# Cargo binaries
fish_add_path -g ~/.cargo/bin
if set -q SETUP_LINUX_INSTALL
else
  # Change Node.js version with Fast Node Manager when directories changed and once on boot
  fnm env --use-on-cd | source
  # Silently fail
  fnm use > /dev/null 2>&- || :
end

## .NET
set -gx DOTNET_CLI_TELEMETRY_OPTOUT true

## Nim
fish_add_path -g ~/.nimble/bin

## Deno
fish_add_path -g $DENO_INSTALL/bin

## npm
fish_add_path -g ~/.npm-global/bin

# Register aliases
source (dirname (status --current-filename))/mnemonics.fish

# Starship shell prompt
starship init fish | source
