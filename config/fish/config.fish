# Remove the Fish greeting
set fish_greeting

## GPG
# Fix the "gpg: error building skey array: Inappropriate ioctl for device" error
# Solution from https://github.com/keybase/keybase-issues/issues/1712#issuecomment-141226705
export GPG_TTY=(tty)

## X display
set -gx DISPLAY (cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0

## Custom env
set -gx NODE_ENV development

## Deno
set -gx DENO_INSTALL ~/.deno

## Python
# Use Python 3.8 by default
alias python=(which python3.8)
# Poetry
fish_add_path -g ~/.poetry/bin

## Yarn
# Alias Squoosh CLI
alias squoosh=squoosh-cli

### PATH
## Local binaries
fish_add_path -g ~/.local/bin

## Nix
fenv source ~/.nix-profile/etc/profile.d/nix.sh

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
# Change Node.js version with Fast Node Manager when directories changed and once on boot
fnm env --use-on-cd | source
# Silently fail
fnm use > /dev/null 2>&- || :

## npm
npm config set prefix '~/.npm-global'

## .NET
set -gx DOTNET_CLI_TELEMETRY_OPTOUT true

## Nim
fish_add_path -g ~/.nimble/bin

## Deno
fish_add_path -g $DENO_INSTALL/bin

## npm
fish_add_path -g ~/.npm-global/bin

# Starship shell prompt
starship init fish | source
