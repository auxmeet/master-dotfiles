#!/bin/sh
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'
echo -e "${YELLOW}Script will install i3wm or bspwm from my repo...${NC}"
read -p "${YELLOW}Continue? (i3wm/bspwm): ${NC}" ans
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
echo -e "${YELLOW}Install optimized grub settings?${NC}"
read -p "Continue? (y/n): " ans
if [[ "$ans" == "y" ]]; then
git clone https://github.com/auxmeet/grub-cachyos-optimized.git 
cd grub-nvidia
chmod +x install.sh
sudo ./install.sh
else
echo -e "${GREEN}✓ All set!${NC}"
exit 0
fi
