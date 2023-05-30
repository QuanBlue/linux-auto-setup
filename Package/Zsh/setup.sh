#!/usr/bin/env bash

# Install Zsh shell
sudo apt install zsh -y

# change default shell to zsh
chsh -s /bin/zsh 

# Install oh-my-zsh (zsh theme manager)
echo -ne 'y\n' | sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install power10level theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# install spaceship theme
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Install font
sudo cp -r "./font/MesloLGS" /usr/share/fonts/truetype/

# Install power10level config
cp ".p10k.zsh" ~/

# Install Zsh config
cp ".zshrc" ~/

#------------------INSTALL OH-MY-ZSH PLUGINS-----------------------
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# thefuck - corrects errors in previous console commands.
sudo apt install python3-dev python3-pip python3-setuptools
pip3 install thefuck --user
eval $(thefuck --alias fuck) # set alias


