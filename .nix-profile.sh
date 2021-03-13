#!/bin/sh
if [ -d "$HOME"/.nix-profile/etc/profile.d ]; then
  for i in $HOME/.nix-profile/etc/profile.d/*.sh; do
    if [ -r "$i" ]; then
      . "$i"
    fi
  done
fi
