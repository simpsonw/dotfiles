#!/bin/bash
if [[ ! -d "${HOME}/.config/base16-gnome-terminal" ]]; then
	git clone https://github.com/chriskempson/base16-gnome-terminal.git ~/.config/base16-gnome-terminal/
	source ~/.config/base16-gnome-terminal/base16-monokai.dark.sh
fi

if [[ ! -d "${HOME}/.config/base16-shell" ]]; then
	git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell/
fi

echo '# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-monokai.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
' >> ~/.bashrc
source ~/.bashrc

