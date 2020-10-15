#!/usr/bin/env fish
# Install Nim via choosenim

set filename /tmp/choosenim.sh
wget -q -O $filename https://nim-lang.org/choosenim/init.sh

sh $filename -y
