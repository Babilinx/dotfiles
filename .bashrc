# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/dotfiles/{path,bash_prompt,bash_aliases}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file
