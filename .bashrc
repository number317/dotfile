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
export PATH=$PATH:$HOME/.local/usr/bin/
if [ $UID == "0" ]; then
    symbol="\[\e[31;1m\]=> \[\e[0m\]";
else
    symbol="\[\e[34;1m\]=> \[\e[0m\]"
fi

export PS1="$symbol"
export PS2=">"
export EDITOR=vim
