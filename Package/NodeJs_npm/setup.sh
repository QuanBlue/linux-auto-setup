#!/usr/bin/env bash

info() {
    tput bold
    tput setaf "6"
    tput setab "7"
    echo "$1"
    tput sgr0
    tput el
}

# install nvm
info "[Install] nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# reset terminal
info "[Info] reset terminal"
source ~/.bashrc
source ~/.zshrc

# update nodejs to lastest LTS version
info "[Update] nodejs"
nvm install --lts
nvm use --lts

# Set the latest version as the default:
nvm alias default node

# remove NodeJS package
info "[Remove] NodeJS package"
sudo apt remove nodejs -y

# create symbolic link
info "[Create] Node symbolic link"
sudo ln -s /usr/bin/nodejs /usr/local/bin/node

# update npm
info "[Update] npm"
npm install -g npm@latest
npm update -g
