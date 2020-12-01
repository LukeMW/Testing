#!/bin/bash 

# Software Installer

cd ~
sudo apt update -qq
sudo apt install -yy gdebi flameshot stacer steam htop notepadqq ghostwriter gparted

# Installing Google Chrome
cd /home/luke/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi -n google-chrome-stable_current_amd64.deb
rm -f google-chrome-stable_current_amd64.deb
cd ~

# Adding a repository
sudo add-apt-repository ppa:libreoffice/libreoffice-7-0
sudo apt update -qq

# Installing Joplin
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash

# Installing Planner (flatpak, no prompt)
flatpak install -y planner
