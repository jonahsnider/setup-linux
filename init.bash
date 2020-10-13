#!/usr/bin/env bash
sudo apt-add-repository -y ppa:fish-shell/release-3
sudo apt-get update -qq
sudo apt-get install fish -yqq

fish ./install/entry.fish

echo "done"
