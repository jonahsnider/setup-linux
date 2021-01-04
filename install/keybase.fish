#!/usr/bin/env fish
# Setup Keybase CLI and GPG keys

set filename /tmp/keybase_amd64.deb

wget -q -O $filename https://prerelease.keybase.io/keybase_amd64.deb
sudo apt install -yqq $filename

echo "you will be asked to sign in to Keybase and register this device on the sigchain"
echo "since my Linux instances are highly ephermeral the names should be unique and follow a sequential pattern"
echo "if this is the home PC, the name should be `WSL Home PC XXX`, where XXX is the number of this Linux install"
run_keybase

keybase login

keybase pgp export | gpg --import
keybase pgp export -s | gpg --allow-secret-key-import --import
