#!/usr/bin/env bash
info() {
    tput bold;tput setaf "6";tput setab "7";echo "$1";tput sgr0;tput el;
}

# Docker
info "[Install] Docker"
sudo apt update -y
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update -y
apt-cache policy docker-ce
sudo apt install docker-ce -y
sudo systemctl enable docker 
sudo usermod -aG docker $USER
su - $USER

# Docker compose
info "[Install] Docker compose"
sudo apt install docker-compose -y