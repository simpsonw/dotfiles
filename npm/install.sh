sudo apt-get install -y npm

# Packages needed for Spacemacs JavaScript layer
sudo npm install -g tern
sudo npm install -g js-beautify
sudo npm install -g jshint

# Packages needed for Spacemacs markup layer
sudo npm install -g vmd
sudo ln -s /usr/bin/vmd /usr/bin/markdown
