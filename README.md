# Bastien's dotfiles
All of my customized dotfiles

# Installation

(be sure ~/dotfiles don't exist, else yo will get an error)
```
git clone https://github.com/Babilinx/dotfiles_profile.git ~/dotfiles
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
## Prompt
### PS1
Custom prompt, with time, directory, Git branch and '$' (or '#' for root) :
![](https://github.com/Babilinx/dotfiles_profile/blob/main/img/prompt.png?raw=true)
### Git status
Showing Git status :
![]()
### Shell title
Custom shell title with username, directory and Git branch for better navigation between tabs :
![](https://github.com/Babilinx/dotfiles_profile/blob/main/img/customshelltitle.png?raw=true)
## Aliases
[List]() of all aliases
# My sources of inspiration
 - [Mathias Bynens's dotfiles repo](https://github.com/mathiasbynens/dotfiles) for setting up files fixtures
 - [Jake Romer article](https://coderwall.com/p/pn8f0g/show-your-git-status-and-branch-in-color-at-the-command-prompt) for the base of bash_prompt customization code
