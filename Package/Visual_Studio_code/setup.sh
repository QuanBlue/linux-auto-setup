#!/usr/bin/env bash

info() {
   tput bold
   tput setaf "6"
   tput setab "7"
   echo "$1"
   tput sgr0
   tput el
}

info "[Install] Visual Studio Code"
sudo snap install --classic code

info "[Install] FiraCode font"
sudo apt install fonts-firacode
