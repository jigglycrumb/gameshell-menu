#!/bin/bash

GREEN='\033[1;32m'
NC='\033[0m'

APPS_DIR="${HOME}/apps/Menu"
LAUNCHER_DIR="${HOME}/launcher/Menu/GameShell"
HERE=`pwd`

printf "${GREEN}Moving original menu items...${NC}\n"

cd ${APPS_DIR}
mv "21_Indie Games" "10_Indie Games"
# rm -rf "20_Retro Games"

sudo apt-get -y install youtube-dl
git clone https://github.com/Skayo/clockTube.git 51_clockTube

cd ${LAUNCHER_DIR}
mv "10_Settings" "97_Settings"
mv "90_Reload UI.sh" "98_Reload UI.sh"
mv "97_Music Player" "95_Music Player"
mv "98_TinyCloud" "96_TinyCloud"

rm "32_freeDM.sh"

printf "${GREEN}Installing new menu items...${NC}\n"

cp -R "${HERE}/GameShell/11_My Retro Games" ${APPS_DIR}
cp -R "${HERE}/GameShell/23_Ports" ${APPS_DIR}
cp -R "${HERE}/GameShell/42_DOOMish" ${APPS_DIR}
cp "${HERE}/45_LSDJ.sh" ${APPS_DIR}
cp "${HERE}/46_nanoloop.sh" ${APPS_DIR}
