#!/bin/bash
sudo apt-get install exuberant-ctags
sudo ln -s /usr/bin/ctags-exuberant /usr/local/bin/ctags
sudo apt-get install libncurses-dev
wget ftp://ftp.gnu.org/pub/gnu/global/global-6.5.4.tar.gz
tar xvf global-6.5.4.tar.gz
cd global-6.5.4/
./configure --with-exuberant-ctags=/usr/local/bin/ctags
make
sudo make install
cd ../
rm -rf global-6.5.4*
