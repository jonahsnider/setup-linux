#!/usr/bin/env fish
# Install SDKMAN! integration for fish

fisher add reitzig/sdkman-for-fish@v1.4.0


echo "if you are prompted to install SDKMAN! again just ignore that"
echo "you need to open a new instance of fish to have the `sdk` function fully installed"
echo "check this file for the commands to install the tools with SDKMAN!"
source "sdk install java"
source "sdk install gradle"
