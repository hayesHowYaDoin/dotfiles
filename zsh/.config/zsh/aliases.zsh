#!/bin/sh

alias zsh-update-plugins="find "$ZDOTDIR/plugins" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"
alias nvimrc="nvim ~/.config/nvim/"

# Colorize grep output
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

# Force confirm before overwriting
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# Make disk commands easier to read
alias df="df -h"     # human-readable sizes
alias free="free -m" # show sizes in MB

# Get top process eating memory
alias psmem="ps auxf | sort -nr -k 4 | head -5"

# Get top process eating CPU
alias pscpu="ps auxf | sort -nr -k 3 | head -5"

case "$(uname -s)" in

Darwin)
	# echo 'Mac OS X'
	alias ls='ls -G'
	;;

Linux)
	alias ls='ls --color=auto'
	;;

CYGWIN* | MINGW32* | MSYS* | MINGW*)
	# echo 'MS Windows'
	;;
*)
	# echo 'Other OS'
	;;
esac

