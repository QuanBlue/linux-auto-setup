# update system
sudo apt update && sudo apt upgrade && sudo apt dist-upgrade -y

# fix wrong time due dual boot
timedatectl set-local-rtc 1

# Uninstall Libre office
sudo apt remove --purge libreoffice\* -y
sudo apt clean 
sudo apt autoremove -y
