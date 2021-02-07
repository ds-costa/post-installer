#!/bin/bash

# Usage:
#       cd ~ 
#       chmod +x post-installer.sh
#      ./post-installer.sh    


cd ~
sudo apt update -qq


# ================== git ==================  #
sudo apt install git -y
git config --global user.name "your-user"
git config --global user.email "yourmail@example.com"

# ================== vim ==================  #
sudo apt install vim -y

# ================== c/c++ enviroment ==================  #
sudo apt install gcc g++ -y
sudo apt install build-essential -y
sudo apt install make cmake -y

# ================== Python3 enviroment ==================  #
sudo apt install python3 -y
sudo apt install python3-pip -y
sudo apt install python3-venv -y

# ================== Nodejs enviroment ==================  #
# https://github.com/nvm-sh/nvm
#nvm ls to see all installed node versions
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
nvm install --lts
nvm use --lts
sudo apt install npm -y

# ================== visual code ==================  #
# (https://linuxize.com/post/how-to-install-visual-studio-code-on-ubuntu-20-04/)
sudo apt update -qq
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code -y

# ================== firefox ==================  #
sudo apt install --only-upgrade firefox

# ================== snapcraft ==================  #
sudo apt install snapd
# snap - spotfy 
sudo snap install spotify
# snap - vlc
sudo snap install vlc
# snap - discord
sudo snap install discord


# Installation done
echo "All done. Please restart your computer."