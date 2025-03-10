#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /usr/share/git/completion/git-prompt.sh

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PROMPT_COMMAND='PS1_CMD1=$(__git_ps1 " (%s)")'
PS1='[$?][\u@\h \w${PS1_CMD1}]\$ '

[ -f "/home/markus/.ghcup/env" ] && . "/home/markus/.ghcup/env" # ghcup-env

export PATH="/home/markus/.dotnet/:$PATH"
export DOTNET_ROOT="/home/markus/.dotnet/"

# If ~/.inputrc doesn't exist yet: First include the original /etc/inputrc
# so it won't get overriden
if [ ! -a ~/.inputrc ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi

# Add shell-option to ~/.inputrc to enable case-insensitive tab completion
echo 'set completion-ignore-case On' >> ~/.inputrc
