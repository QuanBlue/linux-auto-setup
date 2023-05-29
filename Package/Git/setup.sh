#!/usr/bin/env bash

dotfiles_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# We have cd to directory to make sure find only searches in this directory
cd "$dotfiles_dir"

# Install Git + setup
sudo apt install git -y

# Set up configuration
cp .gitconfig ~/.gitconfig

sudo git config --global credential.helper store

# Git extension
# better-commits: https://github.com/Everduin94/better-commits
# Usage: better-commits
sudo npm install -g better-commits