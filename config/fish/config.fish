# Remove the Fish greeting
set fish_greeting

## Custom env
set -gx NODE_ENV development

### PATH
## Local binaries
set -gx fish_user_paths ~/.local/bin $fish_user_paths

## Go
# Go installation root directory
set -gx GOROOT /usr/local/go
# Work directory
set -gx GOPATH $HOME/programming/go
# Add Go to fish_user_paths
set -gx fish_user_paths $GOPATH/bin $GOROOT/bin $fish_user_paths

## Rust
# Cargo binaries
set -gx fish_user_paths ~/.cargo/bin $fish_user_paths

## .NET
set -gx DOTNET_CLI_TELEMETRY_OPTOUT true

## Nim
set -gx fish_user_paths ~/.nimble/bin $fish_user_paths

## Deno
set -gx fish_user_paths $DENO_INSTALL/bin $fish_user_paths

## npm
set -gx fish_user_paths ~/.npm-global/bin $fish_user_paths

### GPG
# Fix the "gpg: error building skey array: Inappropriate ioctl for device" error
# Solution from https://github.com/keybase/keybase-issues/issues/1712#issuecomment-141226705
export GPG_TTY=(tty)

### Python
# Use Python 3.8 by default
alias python=(which python3.8)
# Poetry
set -gx PATH ~/.poetry/bin $PATH

### Deno
set -gx DENO_INSTALL ~/.deno

### npm
npm config set prefix '~/.npm-global'

starship init fish | source
