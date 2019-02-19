#!/bin/bash

GREEN='\033[1;32m'
NC='\033[0m'

NEW_APPS_DIR="${HOME}/apps/Menu"
PATCH_APPS_DIR="${HOME}/launcher/Menu/GameShell"
HERE=`pwd`


printf "${GREEN}Installing new menu items...${NC}\n"

cp -R "${HERE}/GameShell/20_Retro Games/*" "${NEW_APPS_DIR}/20_Retro Games/"
cp -R "${HERE}/GameShell/42_DOOMish" ${NEW_APPS_DIR}

printf "${GREEN}Moving original menu items...${NC}\n"

cd ${PATCH_APPS_DIR}
mv "10_Settings" "97_Settings"
mv "90_Reload UI.sh" "98_Reload UI.sh"
mv "97_Music Player" "95_Music Player"
mv "98_TinyCloud" "96_TinyCloud"


rm "32_freeDM.sh"