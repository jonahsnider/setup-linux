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

# E85CE1D319132409 - Old RSA-4096 key
# BCEA63377AC37FDE - New ED25519 key

keybase pgp export --query E85CE1D319132409 | gpg --import
keybase pgp export --query BCEA63377AC37FDE | gpg --import

keybase pgp export --query E85CE1D319132409 --secret | gpg --allow-secret-key-import --import
keybase pgp export --query BCEA63377AC37FDE --secret | gpg --allow-secret-key-import --import
