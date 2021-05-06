#!/usr/bin/env fish
# Install SDKMAN! integration for fish

fisher add reitzig/sdkman-for-fish@v1.4.0

echo "if you are prompted to install SDKMAN! again just ignore that"

source "sdk install java"
source "sdk install gradle"
