
info() {
    tput bold;tput setaf "6";tput setab "7";echo "$1";tput sgr0;tput el;
}

info "[Install] Google Chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb