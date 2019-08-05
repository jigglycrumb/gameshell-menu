#!/bin/bash

GREEN='\033[1;32m'
NC='\033[0m'

APPS_DIR="${HOME}/apps/Menu"
LAUNCHER_DIR="${HOME}/launcher/Menu/GameShell"
ICONS_DIR="${HOME}/skins/kawaii/Menu/GameShell"
HERE=$(pwd)

printf "${GREEN}Moving original menu items...${NC}\n"

cd "${APPS_DIR}"
mv "21_Indie Games" "10_Indie Games"

cd ${LAUNCHER_DIR}

mkdir "20_Retro Games" # creating an empty folder here will override (and thus hide) the one from ~/apps/Menu
mv "97_Music Player" "95_Music Player"
mv "98_TinyCloud" "96_TinyCloud"
mv "10_Settings" "97_Settings"
mv "90_Reload UI.sh" "98_Reload UI.sh"

printf "${GREEN}Installing clockTube...${NC}\n"

cd "${APPS_DIR}/60_Utils"
sudo apt-get -y install youtube-dl
git clone https://github.com/Skayo/clockTube.git 03_clockTube

printf "${GREEN}Installing new menu items...${NC}\n"

cd "${HERE}"
cp -R menu/* "${APPS_DIR}"

printf "${GREEN}Installing icons...${NC}\n"

cd "${HERE}"
cp -R icon/* "${ICONS_DIR}"

cd "${ICONS_DIR}"
ln -s "21_Indie Games" "10_Indie Games"

printf "${GREEN}All done!${NC}\n"
