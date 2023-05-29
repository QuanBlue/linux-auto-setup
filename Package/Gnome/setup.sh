#!/usr/bin/env bash

project_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/../..
cd $project_dir

# Gnome-tweak
echo -ne '\n' | sudo add-apt-repository universe
sudo apt install gnome-tweaks

# Using gnome-tweak set up theme
# copy all customize files to ~/
for directory in $project_dir/Appearance/*; do
    arrDirname=(${directory//\// })
    dirname=${arrDirname[-1]}

    cp -r $directory ~/.$dirname
done

# Gnome-shell-extensions
sudo apt install gnome-shell-extensions -y

sudo apt install gnome-shell-extension-desktop-icons-ng -y

# Install gnome-extensions-cli
pip3 install --upgrade gnome-extensions-cli

# Install Gnome Extensions
installed_extensions_array=( 
    burn-my-windows@schneegans.github.com 
    netspeedsimplified@prateekmedia.extension 
    transparent-top-bar@ftpix.com 
)

echo "------- Install Gnome extensions --------"
for extension in ${extensions_array[@]}; do
    echo "[Info] Installing $extension..."

    gnome-extensions-cli install $extension
    gnome-extensions-cli enable $extension

    echo "[Info] Install $extension complete!"
done

