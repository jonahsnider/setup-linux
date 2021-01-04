#!/usr/bin/env fish
# Install Pip

set filename /tmp/get-pip.py
wget -q -O $filename https://bootstrap.pypa.io/get-pip.py

# Python is already installed from Node.js or base Ubuntu image
python3 $filename

pip install -qqq ciphey
