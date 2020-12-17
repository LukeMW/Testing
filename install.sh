#!/bin/bash 

# Software Installer

cd ~
sudo apt update -qq
sudo apt install -yy gdebi flameshot stacer steam htop notepadqq ghostwriter gparted bleachbit xclip copyq

# Installing Google Chrome and Github Desktop
cd /home/luke/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi -n google-chrome-stable_current_amd64.deb
rm -f google-chrome-stable_current_amd64.deb
wget https://github.com/shiftkey/desktop/releases/download/release-2.5.7-linux1/GitHubDesktop-linux-2.5.7-linux1.deb
sudo gdebi -n GitHubDesktop-linux-2.5.7-linux1.deb
rm -f GitHubDesktop-linux-2.5.7-linux1.deb 
cd ~

# Installing Joplin
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash

# Installing flatpaks
flatpak install -y planner
flatpak install -y app/fr.handbrake.ghb/x86_64/stable
flatpak install -y qbittorrent


# Adding a repository
sudo add-apt-repository ppa:libreoffice/libreoffice-7-0
sudo apt update -qq

# Intalling Micro text editor
curl https://getmic.ro | bash
