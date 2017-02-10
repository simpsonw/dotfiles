#!/bin/bash
wget -O atom-amd64.deb https://atom.io/download/deb
sudo dpkg -i atom-amd64.deb
git clone https://github.com/simpsonw/proton ~/proton
cd ~/proton
git checkout php_layer
wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein ~/bin/
chmod a+x ~/bin/lein
lein
lein run -m build/release
cd plugin/
apm install
apm link
