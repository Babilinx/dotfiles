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
## Prompt
Custom prompt, using [Sharship](https://shatship.rs) (see `starship/shmtarship.toml`)

## Aliases
Not updated...

# My sources of inspiration
 - [Mathias Bynens's dotfiles repo](https://github.com/mathiasbynens/dotfiles) for setting up files fixtures
 - [Jake Romer article](https://coderwall.com/p/pn8f0g/show-your-git-status-and-branch-in-color-at-the-command-prompt) for the base of bash_prompt customization code
