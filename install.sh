#!bin/sh

read -p "Continue? (i3wm/bspwm): " ans
if [[ "$ans" == "i3wm" ]]; then
  echo "Continuing..."
else
  echo "Breaking..."
  exit 0
fi
