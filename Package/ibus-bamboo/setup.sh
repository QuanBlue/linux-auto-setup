#!/usr/bin/env bash

info() {
    tput bold;tput setaf "6";tput setab "7";echo "$1";tput sgr0;tput el;
}

info "[Install] IBus Bamboo"
echo -ne '\n' | sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo apt-get update
sudo apt-get install ibus ibus-bamboo --install-recommends -y
ibus restart

env DCONF_PROFILE=ibus dconf write /desktop/ibus/general/preload-engines "['BambooUs', 'Bamboo']" && gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'Bamboo')]"
