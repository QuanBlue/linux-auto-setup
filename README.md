# Quick setup Ubuntu

## <u>Step 1:</u> Manual installation

**Install language type - Vietnamese (unikey)**  
https://minhng.info/tips/unikey-ubuntu-2204.html

**Install google chrome**  
https://www.google.com/chrome/?brand=BNSD&gclid=EAIaIQobChMI7s-wuIWA_QIVAzdgCh0VLw9KEAAYASAAEgJWh_D_BwE&gclsrc=aw.ds

**Install oh-my-zsh**  
https://www.youtube.com/watch?v=eh7lM3Yvf94&ab_channel=CodeFallacy

**Install Site specific browser - IceSSB**
https://learnubuntumate.weebly.com/ice-ssb.html

**Install WPS office**
https://www.wps.com/office/linux/

**Install Cursor IDE**
https://www.cursor.so/

## <u>Step 2:</u> Automatic installation

> Open terminal, run this command and enter password

```sh
# enter root user
sudo su
```

> Copy these command and run in terminal

```sh
# Change directory Download
cd Downloads

# update system
sudo apt update && sudo apt upgrade && sudo apt dist-upgrade -y

# update npm
sudo npm install -g npm@latest --force

# fix wrong time due dual boot
timedatectl set-local-rtc 1

# install Visual studio Code
sudo snap install --classic code

# Install Notion
sudo snap install notion-snap

# Install chatGPT desktop
sudo snap install chatgpt-desktop

# Install Foliate (E-book reader)
sudo snap install foliate

# Install gnome-tweak
sudo add-apt-repository universe
sudo apt install gnome-tweaks

# Install github
sudo apt install git -y
git config --global user.name "QuanBlue"
git config --global user.email "quannguyenthanh558@gmail.com"
git config --global credential.helper store

# Install Git extension
# better-commits: https://github.com/Everduin94/better-commits
# Usage: better-commits
sudo npm install -g better-commits

# Install Java
sudo apt update
java –version
sudo apt install default-jdk -y
sudo update-alternatives --config java
sudo apt-get install openjdk-8-jdk -y

# Install pip3 (python3)
sudo apt install python3-pip -y

# Install mono (running .exe file in linux)
# Usage: mono [file_name].exe
sudo apt install mono-complete -y

# Install Jenkins
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins -y
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo ufw allow 8080
sudo ufw allow OpenSSH
sudo ufw enable
sudo ufw status

# Install OneDrive
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
systemctl --user enable onedrive

# Install NVIDIA drivers
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.0-1_all.deb
sudo dpkg -i cuda-keyring_1.0-1_all.deb
sudo apt-get update
sudo apt-get install cuda -y

# Install VirtualBox + Vagrant
sudo apt install virtualbox -y
wget https://releases.hashicorp.com/vagrant/2.2.19/vagrant_2.2.19_x86_64.deb
sudo apt install ./vagrant_2.2.19_x86_64.deb
y
# Install hacking tool - aircrack-ng
sudo apt install aircrack-ng -y

# Install generate dictionary tool - crunch
sudo apt install crunch -y

# Install cracking password tool - hashcat
sudo apt install hashcat -y

# Uninstall Libre office
sudo apt-get remove --purge libreoffice\* -y
sudo apt-get clean
sudo apt-get autoremove

# Install curl
sudo apt install curl -y

# Install ranger (file manager for the console)
sudo apt install ranger -y

# install fuse (for running ImageApp application)
sudo apt-get install fuse
sudo modprobe fuse
sudo usermod -a -G fuse $USER

# Install htop
sudo apt install htop -y

# Download theme frome Github
cd Desktop
git clone https://github.com/QuanBlue/My-Linux-Setting.git

# Install VLC
sudo snap install vlc

# Install Gnome Shell Extensions
sudo apt install gnome-shell-extensions

# Install tmux
sudo apt install tmux -y

# Install neofetch
sudo apt install neofetch -y

# Install zsh
sudo apt install zsh -y
```

## <u>Step 3:</u> Install Gnome's Extension

**Burn My Windows**  
https://extensions.gnome.org/extension/4679/burn-my-windows/

**Transparent Top Bar (Adjustable transparency)**  
https://extensions.gnome.org/extension/3960/transparent-top-bar-adjustable-transparency/

**Net speed Simplified**  
https://extensions.gnome.org/extension/3724/net-speed-simplified/

## <u>Step 4:</u> Using `Gnome-Tweaks` to manual custom theme

-  Icon
-  Cursor
-  Background
-  Keyboard shortcut
