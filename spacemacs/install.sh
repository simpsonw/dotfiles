#!/bin/bash
brew install ispell ag
brew install emacs-head@28 --with-cocoa --with-native-comp
git clone --branch develop https://github.com/syl20bnr/spacemacs ~/.emacs.d
