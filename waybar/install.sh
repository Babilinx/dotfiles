#!/usr/bin/env bash

[[ ! -d "~/.config/waybar" ]] && mkdir ~/.config/waybar

case $TARGET in
    laptop-gentoo-intel) cp waybar/laptop-gentoo-intel/* ~/.config/waybar/;;
    desktop-gentoo-amd) cp waybar/desktop-gentoo-amd/* ~/.config/waybar/;;
esac
