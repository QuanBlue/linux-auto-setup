#!/usr/bin/env bash
info() {
    tput bold;tput setaf "6";tput setab "7";echo "$1";tput sgr0;tput el;
}

info "[Install] Onedrive"
sudo apt remove onedrive
sudo add-apt-repository --remove ppa:yann1ck/onedrive
sudo rm -rf /var/lib/dpkg/lock-frontend
sudo rm -rf /var/lib/dpkg/lock
sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y
wget -qO - https://download.opensuse.org/repositories/home:/npreining:/debian-ubuntu-onedrive/xUbuntu_22.04/Release.key | gpg --dearmor | sudo tee /usr/share/keyrings/obs-onedrive.gpg > /dev/null
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/obs-onedrive.gpg] https://download.opensuse.org/repositories/home:/npreining:/debian-ubuntu-onedrive/xUbuntu_22.04/ ./" | sudo tee /etc/apt/sources.list.d/onedrive.list
sudo apt update
sudo apt install onedrive -y

# enable onedrive
systemctl --user enable onedrive