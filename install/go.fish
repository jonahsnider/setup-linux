#!/usr/bin/env fish
# Install Go

set filename /tmp/go.tar.gz
wget -q -O $filename https://golang.org/dl/go1.16.3.linux-amd64.tar.gz

sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf $filename
