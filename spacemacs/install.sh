#!/bin/bash
echo -n "Have you enabled source code repositories in Software Sources and cleared the cache? [y/n]"

read response

if [ "$response" == "y" ]; then
	sudo apt-get install build-essential
	sudo apt-get build-dep emacs24
	wget http://ftp.gnu.org/gnu/emacs/emacs-24.5.tar.gz
	tar xf emacs-24.5.tar.gz
	cd emacs-24.5/
	./configure
	make -j=2
	sudo make install
	cd ../
	sudo rm -rf emacs-24.5*
	git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
fi
