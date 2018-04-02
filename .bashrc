# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ls='ls --color'
set -o vi
export PS1="\[$(tput bold)\]\[\033[38;5;44m\]=> \[$(tput sgr0)\]"
export PS2="\[$(tput bold)\]\[\033[38;5;44m\]> \[$(tput sgr0)\]"
export EDITOR=vim
