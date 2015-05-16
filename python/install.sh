pip install powerline-status

# Install fonts for Powerline
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mv PowerlineSymbols.otf /usr/share/fonts/X11/misc/
fc-cache -vf /usr/share/fonts/X11/misc/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
