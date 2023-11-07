#!/usr/bin/env bash

COLOR_GREEN='\033[0;32m'
COLOR_RED='\033[0;31m'
COLOR_RESET='\033[0m'

echo "Babilinx's dotfiles installer"
echo -e "\n\n"

echo "Select device:"
echo "Note: If you want to try some things, do the install manually!"
TARGET=$(gum choose "laptop-gentoo-intel" "desktop-gentoo-amd" "generic")
echo -e "\ntarget: $TARGET\n"

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
