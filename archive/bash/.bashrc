# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/dotfiles/bash/{path,bash_prompt,bash_aliases,bash_aliases_user}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

eval "$(starship init bash)"
