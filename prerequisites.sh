info() {
    tput bold;tput setaf "6";tput setab "7";echo "$1";tput sgr0;tput el;
}

# update system
info "[Update] System"
echo -ne 'y\n' | sudo apt update && sudo apt upgrade && sudo apt dist-upgrade -y

# fix wrong time due dual boot
info "[Fix] Wrong time due dual boot"
timedatectl set-local-rtc 1

# Uninstall Libre office
info "[Uninstall] Libre office"
sudo apt remove --purge libreoffice\* -y
sudo apt clean 
sudo apt autoremove -y
