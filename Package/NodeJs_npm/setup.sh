#!/usr/bin/env bash

info() {
    tput bold;tput setaf "6";tput setab "7";echo "$1";tput sgr0;tput el;
}

# update npm
info "[Update] npm"
sudo npm install -g npm@latest 
npm update -g

# update nodejs to version v20.2.0
info "[Update] nodejs"
nvm install v20.2.0 -y
