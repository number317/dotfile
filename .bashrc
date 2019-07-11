# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ls='ls --color'
alias pacman='pacman --color auto'
alias grep='grep --color=auto'

export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'
export LESS_TERMCAP_md=$'\E[1;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[1;32m'

[[ -f ~/Codes/panel/trigger.sh ]] && source ~/Codes/panel/trigger.sh

man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

# for panel

ranger() {
    if [ -z "$RANGER_LEVEL" ]; then
        /usr/bin/ranger "$@"
    else
        exit
    fi
}

set -o vi
export PATH=$PATH:$HOME/.local/usr/bin/
if [ $UID == "0" ]; then
    symbol="\[\e[31;1m\]\n┌──»─ \t \w\n\[\e[31;1m\]└──«─ \[\e[0m\]";
    #symbol="\[\e[31;1m\]»» \[\e[0m\]";
else
    symbol="\[\e[34;1m\]\n┌──»─ \t \w\n\[\e[34;1m\]└──«─ \[\e[0m\]";
    #symbol="\[\e[34;1m\]»» \[\e[0m\]";
fi

# random Xresource color
colors=("chinese" "nord" "pretty" "snazzy")
sed -i "s/nord\|chinese\|pretty\|snazzy/${colors[$((RANDOM%3))]}/g" ~/.Xresources
[[ $(tty) =~ "/dev/tty[0-9]" ]] || xrdb -remove && xrdb -load ~/.Xresources
unset colors

export PS1="$symbol"
export PS2="→ "
export EDITOR=vim
export TERMINAL=urxvtc
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export QT4_IM_MODULE=xim
#export QT_SCALE_FACTOR=1.8
#export GDK_SCALE=1.8
export MALLOC_TRACE=/home/cheon/Downloads/trace.log

export PYTHONPATH=/home/cheon/Codes/dockeraily/python/site-packages
