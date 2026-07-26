#!/bin/sh
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${YELLOW}Script will install i3wm or bspwm...${NC}"
read -p "${YELLOW}Continue? (i3wm/bspwm): ${NC}" ans
if [[ "$ans" == "i3wm" ]]; then
  git clone https://github.com/auxmeet/i3wm-dotfiles.git
  cd i3wm-dotfiles
  chmod +x onestep.sh
  chmod +x twostep.sh
  sudo ./onestep.sh
  ./twostep.sh
else
  echo "Script will install bspwm dotfiles from git"
  git clone https://github.com/auxmeet/bspwm-dotfiles.git 
  cd bspwm-dotfiles
  chmod +x onestep.sh
  chmod +x twostep.sh
  sudo ./onestep.sh
  ./twostep.sh
fi
read -p "Continue? (i3wm/bspwm): " ans
if [[ "$ans" == "y" ]]; then

else

fi


