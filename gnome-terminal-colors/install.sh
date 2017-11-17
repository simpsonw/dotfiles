#!/bin/bash
cd "${0%/*}"
sudo apt-get install dconf-cli
git clone https://github.com/dracula/gnome-terminal.git
cd gnome-terminal && ./install.sh
