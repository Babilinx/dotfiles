#!/usr/bin/env bash

[[ ! -d ".config/dunst" ]] && mkdir ~.config/dunst

case $TARGET in
    laptop-gentoo-intel) cp dunst/laptop-gentoo-intel/dunstrc ~/.config/dunst/;;
    desktop-gentoo-amd) cp dunst/desktop-gentoo-amd/dunstrc ~/.config/dunst;;
esac
