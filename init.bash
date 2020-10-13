#!/usr/bin/env bash
sudo apt-add-repository -y ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish -y

fish ./install/entry.fish

echo "done"
