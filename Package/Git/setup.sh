#!/usr/bin/env bash

# Install Git + setup
sudo apt install git-all -y
sudo git config --global user.name "QuanBlue"
sudo git config --global user.email "quannguyenthanh558@gmail.com"
sudo git config --global credential.helper store

# Git extension
# better-commits: https://github.com/Everduin94/better-commits
# Usage: better-commits
sudo npm install -g better-commits