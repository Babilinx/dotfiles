# Set colors
COLOR_RED="\033[0;31m"
COLOR_YELLOW="\033[0;33m"
COLOR_GREEN="\033[0;32m"
COLOR_OCHRE="\033[38;5;95m"
COLOR_BLUE="\033[0;34m"
COLOR_WHITE="\033[0;37m"
COLOR_RESET="\033[0m"


# Change color of current git branch in function of it status
function git_color {
  local git_status="$(git status 2> /dev/null)"

  if [[ ! $git_status =~ ", la copie de travail est propre" ]]; then
    echo -e $COLOR_RED
  elif [[ $git_status =~ "rien à valider" ]]; then
    echo -e $COLOR_GREEN
  elif [[ $git_status =~ "lol" ]]; then
    echo -e $COLOR_YELLOW
  else
    echo -e $COLOR_OCHRE
  fi
}

# Get cuttent branch name
function git_branch {
  local git_status="$(git status 2> /dev/null)"
  local on_branch="Sur la branche ([^${IFS}]*)"
  local on_commit="HEAD detached at ([^${IFS}]*)"

  if [[ $git_status =~ $on_branch ]]; then
    local branch=${BASH_REMATCH[1]}
    echo ":$branch"
  elif [[ $git_status =~ $on_commit ]]; then
    local commit=${BASH_REMATCH[1]}
    echo "|$commit"
  fi
}

# Set COLOR_RED to '#' if the user is root, COLOR_GREEN if we are in SSH connection, else COLOR_BLUE to '$'
if [ "${USER}" = "root" ]; then           # If root, '#' COLOR_RED
  USERCOLOR="${COLOR_RED}"
elif [ "${SSH_TTY}" ]; then           # If SSH connection, '$'/'#' COLOR_GREEN
  USERCOLOR="${COLOR_GREEN}"
else            # Else (no root and no SSH), '$' COLOR_BLUE 
  USERCOLOR="${COLOR_BLUE}"
fi

# Make the prompt as we want
PS1="\[\033]0;\u/../\W\$(git_branch)\007\]"           # set the current directory as terminal's name
PS1+="\[$COLOR_GREEN\][\t] "           # time
PS1+="\[$COLOR_WHITE\]\w"          # basename of pwd
PS1+="\[\$(git_color)\]"        # colors git status
PS1+="\$(git_branch)"           # prints current branch
PS1+="\[$USERCOLOR\]\$\[$COLOR_RESET\] "   # '#' for root in red, else '$' in blue
export PS1
