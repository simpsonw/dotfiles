#!/bin/bash
sudo apt-get install i3
sudo add-apt-repository ppa:jasonpleau/rofi
sudo apt update
sudo apt-get install rofi
sudo apt-get install feh
feh --bg-center jupiter.png
git clone git@github.com:UtkarshVerma/installer-scripts.git i3lock-installer
chmod +x i3lock-installer/betterlockscreen.sh
i3lock-installer/betterlockscreen.sh
