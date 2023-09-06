#!/usr/bin/env bash

info() {
    tput bold
    tput setaf "6"
    tput setab "7"
    echo "$1"
    tput sgr0
    tput el
}

# Install font
info "[Install] MesloLGS font"
sudo cp -r "./font/MesloLGS" /usr/share/fonts/truetype/

# Install power10level config
info "[Install] power10level config"
cp ".p10k.zsh" ~/

# Install Zsh shell
info "[Install] Zsh shell"
sudo apt install zsh -y

# change default shell to zsh
info "[Config] change default shell to zsh"
chsh -s $(which zsh)

# Install oh-my-zsh (zsh theme manager)
info "[Install] oh-my-zsh (zsh theme manager)"
rm -rf ~/.oh-my-zsh
echo -ne 'y\n' | sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Zsh config
info "[Install] Zsh config"
cp ".zshrc" ~/ -f

# install power10level theme
info "[Install] power10level theme"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# install spaceship theme
info "[Install] spaceship theme"
git clone --depth=1 https://github.com/spaceship-prompt/spaceship-prompt.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/spaceship-prompt
ln -s ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/spaceship-prompt/spaceship.zsh-theme ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/spaceship.zsh-theme

info "[Install] Oh-my-zsh plugins"
#------------------INSTALL OH-MY-ZSH PLUGINS-----------------------
# zsh-autosuggestions
info "[Install] Oh-my-zsh plugins: zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
info "[Install] Oh-my-zsh plugins: zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# thefuck - corrects errors in previous console commands.
info "[Install] thefuck"
sudo apt install python3-dev python3-pip python3-setuptools -y
sudo apt install thefuck -y

info "[Update] ~/.zshrc"
zsh && source ~/.zshrc
