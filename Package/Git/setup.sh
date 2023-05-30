#!/usr/bin/env bash

info() {
    tput bold;tput setaf "6";tput setab "7";echo "$1";tput sgr0;tput el;
}

# We have cd to directory to make sure find only searches in this directory
dotfiles_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$dotfiles_dir"

# Install Git
info "[Install] Git"
sudo apt install git -y

# Set up configuration
info "[Config] Git"
cp .gitconfig ~/.gitconfig
sudo git config --global credential.helper store

info "[Install] Git extensions"
# Git extension
# better-commits: https://github.com/Everduin94/better-commits
# Usage: better-commits
info "[Install] Git extension: better-commits"
sudo npm install -g better-commits