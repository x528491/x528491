#!/bin/bash
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y
sudo apt clean -y
sudo apt install -y curl vim htop tmux firefox vlc mousepad
curl -O "https://dl.google.com/go/$(curl -s 'https://golang.org/VERSION?m=text').linux-amd64.tar.gz"
sudo tar -C /usr/local -xzf ./go*.tar.gz
rm ./go*.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >> /home/"$USER"/.bashrc
curl -JLO "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
sudo apt install -y ./code*.deb
rm ./code*.deb
