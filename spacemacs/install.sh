#!/bin/bash
sudo add-apt-repository -y ppa:kelleyk/emacs
sudo apt update
sudo apt-get install -y emacs26 socat
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
