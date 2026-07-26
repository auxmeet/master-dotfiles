#!/bin/sh
echo -e "Script will install i3wm or bspwm..."
read -p "Continue? (i3wm/bspwm): " ans
if [[ "$ans" == "i3wm" ]]; then
  echo -e "Script will install i3wm dotfiles from git"
  git clone https://github.com/auxmeet/i3wm-dotfiles.git
  cd i3wm-dotfiles
  chmod +x onestep.sh
  chmod +x twostep.sh
  sudo ./onestep.sh
  ./twostep.sh
fi
if [[ "$ans" == "bspwm" ]]; then
  echo -e "Script will install bspwm dotfiles from git"
  git clone https://github.com/auxmeet/bspwm-dotfiles.git 
  cd bspwm-dotfiles
  chmod +x onestep.sh
  chmod +x twostep.sh
  sudo ./onestep.sh
  ./twostep.sh
fi
echo -e "Install grub settings?"
read -p "Continue? (y/n): " ans
if [[ "$ans" == "y" ]]; then
git clone https://github.com/auxmeet/grub-optimization-nvidia.git 
cd grub-optimization-nvidia
chmod +x install.sh
sudo ./install.sh
else
echo -e "Okay! Goodbye"
exit 0
fi
