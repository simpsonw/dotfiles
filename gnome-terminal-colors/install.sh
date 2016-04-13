#!/bin/bash
cd "${0%/*}"
git clone https://github.com/metalelf0/gnome-terminal-colors.git
cd gnome-terminal-colors
mv install.sh setup.sh
./setup.sh -s dracula -p Default
