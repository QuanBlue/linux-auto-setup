#!/usr/bin/env bash

info() {
    tput bold
    tput setaf "6"
    tput setab "7"
    echo "$1"
    tput sgr0
    tput el
}

project_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"/../..
cd $project_dir

# Gnome-tweak
info "[Install] Gnome-tweak"
echo -ne '\n' | sudo add-apt-repository universe
sudo apt install gnome-tweaks -y

# Using gnome-tweak set up theme
# copy all customize files to ~/
info "[Setup] UI theme"
for directory in $project_dir/Appearance/*; do
    arrDirname=(${directory//\// })
    dirname=${arrDirname[-1]}

    cp -r $directory ~/.$dirname
done

# Gnome-shell-extensions
info "[Install] Gnome-shell-extensions"
sudo apt install gnome-shell-extensions -y

info "[Install] Gnome-shell-extension-desktop-icons-ng"
sudo apt install gnome-shell-extension-desktop-icons-ng -y

# Install gnome-extensions-cli
info "[Install] gnome-extensions-cli"
pipx install gnome-extensions-cli --system-site-packages --force

# Install Gnome Extensions
info "[Install] Gnome Extensions"
installed_extensions_array=(
    openweather-extension@jenslody.de
    tiling-assistant@leleat-on-github
    pano@elhan.io
    burn-my-windows@schneegans.github.com
    netspeedsimplified@prateekmedia.extension
    transparent-top-bar@ftpix.com
    ubuntu-dock@ubuntu.com
)

for extension in ${installed_extensions_array[@]}; do
    info "[Install] Gnome extension: $extension"

    gnome-extensions-cli install $extension
    gnome-extensions-cli enable $extension
done
