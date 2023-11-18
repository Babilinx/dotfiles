#!/usr/bin/env bash

COLOR_GREEN='\033[0;32m'
COLOR_RED='\033[0;31m'
COLOR_RESET='\033[0m'

SELECTED_TARGET=$1

echo "Babilinx's dotfiles installer"
echo

case $SELECTED_TARGET in
    laptop-gentoo-intel) TARGET="laptop-gentoo-intel";;
    desktop-gentoo-amd) TARGET="desktop-gentoo-amd";;
    *)
        echo "'$SELECTED_TARGET' is not a valid target!"
        echo "Note: If you want to try some things, do the install manually!"
        echo "(So nothing will be lost)"
        exit 1;;
esac

for config_folder in $(ls -d */); do
	[ "$config_folder" == "img/" ] && continue

	if [[ -r "install.sh" ]] && [[ -f "install.sh" ]]; then
		echo -e -n "installing ${config_folder}..."
		TARGET="$TARGET" bash ${config_folder}/install.sh 2> /dev/null
		if [ "$?" == 0 ]; then
			echo -e "${COLOR_GREEN}done${COLOR_RESET}"
		else
			echo -e "${COLOR_RED}failed${COLOR_RESET}"
		fi
	fi
done

unset TARGET
