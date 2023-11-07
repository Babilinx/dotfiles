#!/usr/bin/env bash

COLOR_GREEN='\033[0;32m'
COLOR_RED='\033[0;31m'
COLOR_RESET='\033[0m'

TARGETS=("intel-laptop-gentoo" "amd-desktop-gentoo")

target_selection() {
    for (( i = 0; i < ${#TARGETS[@]}; i++ )); do
        echo "$((i+1)) $TARGETS[i]"
    done
    echo

    read -p "Select a target [1-${#TARGETS[@]}]: " TARGET_SELECTED
    
    while [[ ! "${TARGETS[$((TARGET_SELECTED+1))]}" ]]; do
        echo "Wrong input '$TARGET_SELECTED'"
        read -p "Select a target [1-${#TARGETS[@]}]: " TARGET_SELECTED
    done

    echo "${TARGETS[$((TARGET_SELECTED+1))]}"
}

echo "Babilinx's dotfiles installer"
echo -e "\n\n"

echo "Select device:"
echo "Note: If you want to try some things, do the install manually!"

TARGET=$(target_selection)
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
