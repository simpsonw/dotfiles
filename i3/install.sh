#!/bin/bash
if ! hash npm 2>/dev/null; then
    bash ../npm/install.sh
fi

sudo apt-get install -y i3 i3status
sudo add-apt-repository -y ppa:jasonpleau/rofi
sudo apt update
sudo apt-get install -y rofi
sudo apt-get install -y feh
sudo apt-get install -y compton
feh --bg-center $PWD/wallpaper.png
git clone git@github.com:krusipo/cinnamon-i3.git
cd cinnamon-i3
npm install
node_modules/grunt/bin/grunt
grunt debian
sudo dpkg -i dist/debian/cinnamon-i3_0.5.0-1_amd64.deb
sudo apt-get -f install
rm -rf cinnamon-i3
sudo apt-get install -y libanyevent-i3-perl
