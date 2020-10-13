#!/usr/bin/env fish
# Install SDKMAN! integration for fish

sudo apt install unzip

fisher add reitzig/sdkman-for-fish@v1.4.0
sdk install java
sdk install gradle
