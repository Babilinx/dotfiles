#!/usr/bin/env bash

cp .bashrc ~/.bashrc
cp .bash_profile ~/.bash_profile

if [ -d "~/.config/nvim/" ]; then
  mv ~/.config/nvim/ ~/.config/nvim-old/
  echo "Old nvim configuration renamed to nvim-old."
fi

cp -r nvim ~/.config/

cp starship.toml ~/.config/starship.toml
