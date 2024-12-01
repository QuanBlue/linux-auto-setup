#!/usr/bin/env bash

info() {
    tput bold;tput setaf "6";tput setab "7";echo "$1";tput sgr0;tput el;
}

info "[Install] Termius"
wget https://www.termius.com/download/linux/Termius.deb
sudo apt install ./Termius.deb -y

info "[Remove] Installation file"
rm ./Termius.deb 
