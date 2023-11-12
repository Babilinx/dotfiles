# My dotfiles
All of my customized things that i want to save

# Installation

(be sure ~/dotfiles don't exist, else yo will get an error)
```
git clone https://github.com/Babilinx/dotfiles.git ~/dotfiles
``` 
Save your current `.bashrc` file if you want to keep it later.
```
cd ~/dotfiles
./install.sh
```
**Be cafefull : it will erase all content in `~/.bashrc` file**

Et voilà ! Just restart your terminal or do:
```
source ~/.bashrc
```
# Customizations
## Bash/Comand Line
### Prompt
Custom prompt, using [Sharship](https://shatship.rs) (see `starship/shmtarship.toml`)

### Aliases
Not updated...

### .bash_profile
Autostart Sway session when login from tty1. (because i have no login manager)

## Waybar
Inspired by [dmenu theme](https://github.com/philj56/tofi/blob/master/themes/dmenu) and modified to what i wanted.
Using Gruvbox colors.

## Sway
Near stock config adapted to my keyboard (azerty), displays, etc, with Gruvbox colors.

## Tofi
Make to be really dmenu-like.
With Gruvbox colors

Used to:
- Select and start apps
- Set WiFi
- Powermenu (poweroff, restart, etc)

## Dunst
Stock config with Gruvbox colors and modified font and notification size and time.

## Bin
### tofi_wifi_menu
Adapted version of [rofi_wifi_menu](https://github.com/ericmurphyxyz/rofi-wifi-menu/blob/master/rofi-wifi-menu.sh) by ericmurphyxyz to tofi.

### get_cpu_temp
Get temperature of Intel CPU from `sensors -j` because hwmon CPU name change at each boot.

### powermenu
Use `tofi` to:
- logout (`swaymsg exit`) (will using [Waylock](https://github.com/ifreund/waylock) in the future maybe)
- poweroff (`loginctl poweroff`)
- reboot (`loginctl reboot`)
- reload Sway (`swaymsg reload`)
- exit Sway (`swaymsg exit`)

# My sources of inspiration
 - [Mathias Bynens's dotfiles repo](https://github.com/mathiasbynens/dotfiles) for setting up files fixtures
 - [Jake Romer article](https://coderwall.com/p/pn8f0g/show-your-git-status-and-branch-in-color-at-the-command-prompt) for the base of bash_prompt customization code
