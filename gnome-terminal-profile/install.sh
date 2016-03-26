#!/bin/bash

sudo apt-get install fonts-inconsolata
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ln -s ${DIR}/will/ ~/.gconf/apps/gnome-terminal/profiles/
