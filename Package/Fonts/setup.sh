#!/usr/bin/env bash

info() {
   tput bold
   tput setaf "6"
   tput setab "7"
   echo "$1"
   tput sgr0
   tput el
}

info "[Install] Fonts"
for fonts in Package/Fonts/fonts/*; do
   info "> $(basename $fonts)"
   cp -r $fonts ~/.local/share/fonts
done
