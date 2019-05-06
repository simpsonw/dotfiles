#!/bin/bash
if ! hash npm 2>/dev/null; then
    bash ../npm/install.sh
fi

sudo apt-get install i3
sudo add-apt-repository ppa:jasonpleau/rofi
sudo apt update
sudo apt-get install rofi
sudo apt-get install feh
sudo apt-get install compton
feh --bg-center $PWD/wallpaper.png
sudo apt-get install libanyevent-i3-perl
