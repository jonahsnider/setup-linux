#!/usr/bin/env fish
# Set symlink for .gitconfig

ln -s $SETUP_LINUX_INSTALL_DIR/config/git/.gitconfig ~/.gitconfig
pass init E3D78B8F4596CD635F304439E85CE1D319132409

set filename /tmp/gcmcore-linux_amd64.deb
# Once GCM goes stable this should be removed
wget -q -O $filename https://github.com/microsoft/Git-Credential-Manager-Core/releases/download/v2.0.252-beta/gcmcore-linux_amd64.2.0.252.766.deb
sudo apt install -yqq $filename
git-credential-manager-core configure
