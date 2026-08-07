#!/bin/bash
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'
echo -e "Script will install i3wm or bspwm from git"
read -p "Continue? (i3wm/bspwm): " ans
if [[ "$ans" == "i3wm" ]]; then
  echo -e "${YELLOW}Script will install i3wm dotfiles from git${NC}"
  git clone https://github.com/auxmeet/i3wm-dotfiles.git
  cd i3wm-dotfiles
  chmod +x onestep.sh
  chmod +x twostep.sh
  sudo ./onestep.sh
  ./twostep.sh
fi
if [[ "$ans" == "bspwm" ]]; then
  echo -e "${YELLOW}Script will install bspwm dotfiles from git${NC}"
  git clone https://github.com/auxmeet/bspwm-dotfiles.git 
  cd bspwm-dotfiles
  chmod +x onestep.sh
  chmod +x twostep.sh
  sudo ./onestep.sh
  ./twostep.sh
fi
echo -e "Install optimized grub settings?"
read -p "Continue? (y/n): " ans
if [[ "$ans" == "y" ]]; then
git clone https://github.com/auxmeet/grub-cachyos-optimized.git 
cd grub-cachyos-optimized
chmod +x install.sh
sudo ./install.sh
else
echo -e "${GREEN}✓ All set!${NC}"
exit 0
fi
