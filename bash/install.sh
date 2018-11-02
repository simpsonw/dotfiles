#!/bin/bash
find `pwd` -name *.bash -exec echo "source" {} \; > bash/dotfiles.bashrc
chmod +x $PWD/bash/dotfiles.bashrc
grep -q -F "source $PWD/bash/dotfiles.bashrc" ~/.bashrc || echo "source $PWD/bash/dotfiles.bashrc" >> ~/.bashrc
grep -q -F "export PATH=\$PATH:$PWD/bin/" ~/.bashrc || echo "export PATH=\$PATH:$PWD/bin/" >> ~/.bashrc
