#!/usr/bin/env bash
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish

fish ./install/entry.fish

echo "done"
