#!/usr/bin/bash

packages="neovim kitty zsh libreoffice btop mpv qbittorrent qalculate-qt wine openrgb ethtool openssh tldr git"
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd $SCRIPT_DIR

# install packages
if command -v dnf; then
    sudo dnf update & sudo dnf install $packages
elif command -v pacman; then
    sudo pacman -S $packages
elif command -v apt; then
    sudo apt update & sudo apt install $packages
fi

# set shell to zsh
sudo chsh -s $(which zsh)

# install oh-my-posh and nerdfont
curl -s https://ohmyposh.dev/install.sh | bash -s
oh-my-posh font install firacode

#install zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

# copy config files
sudo cp -r .config ~/
sudo cp -r rules.d /etc/udev/
sudo cp .zshrc ~/.zshrc

# source zshrc
source ~/.zshrc

# reload udev rules
sudo udevadm control --reload-rules
sudo udevadm trigger

# enable wake-on-lan
# sudo ethtool -s enp6s0 wol g

# enable ssh
sudo systemctl enable --now ssh
