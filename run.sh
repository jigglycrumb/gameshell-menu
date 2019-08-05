#!/bin/bash

cd /home/cpi
if [ ! -d mods ]; then
  mkdir mods
fi

cd mods
if [ ! -d gameshell-menu ]; then
  git clone https://github.com/hpcodecraft/gameshell-menu.git
fi

cd gameshell-menu
git pull
./install.sh
