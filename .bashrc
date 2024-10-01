#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[$?][\u@\h \w]\$ '

[ -f "/home/markus/.ghcup/env" ] && . "/home/markus/.ghcup/env" # ghcup-env

export PATH="/home/markus/.dotnet/:$PATH"
export DOTNET_ROOT="/home/markus/.dotnet/"
