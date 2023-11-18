#!/usr/bin/env bash

[[ -d "~/.config/sway" ]] && mkdir ~/.config/sway

case $TARGET in
    laptop-gentoo-intel) cp sway/laptop-gentoo-intel/config ~/.config/sway/;;
    desktop-gentoo-amd) cp sway/desktop-gentoo-amd/conig ~/.config/sway/;;
esac
