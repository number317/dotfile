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

alias wireshark='export export QT_SCALE_FACTOR=1.6; wireshark'

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

urlencode() {
    # Usage: urlencode "string"
    local LC_ALL=C
    for (( i = 0; i < ${#1}; i++ )); do
        : "${1:i:1}"
        case "$_" in
            [a-zA-Z0-9.~_-])
                printf '%s' "$_"
            ;;

            *)
                printf '%%%02X' "'$_"
            ;;
        esac
    done
    printf '\n'
}

urldecode() {
    # Usage: urldecode "string"
    : "${1//+/ }"
    printf '%b\n' "${_//%/\\x}"
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
if [[ $UID == "0" ]]; then
    if [[ $(tty) =~ /dev/pts/[0-9]* ]]; then
        symbol="\[\e[31;1m\]\n┌──»─ \t \w\n\[\e[31;1m\]└─── \[\e[0m\]";
    else
        symbol="\[\e[31;1m\]\n┌──»─ \t \w\n\[\e[31;1m\]└──«─ \[\e[0m\]";
    fi
else
    if [[ $(tty) =~ /dev/pts/[0-9]* ]]; then
        symbol="\[\e[34;1m\]\n┌──»─ \t \w\n\[\e[34;1m\]└─── \[\e[0m\]";
    else
        symbol="\[\e[34;1m\]\n┌──»─ \t \w\n\[\e[34;1m\]└──«─ \[\e[0m\]";
    fi
fi

# random Xresource color

if grep -q "^/dev/pts/[0-9]*$" <<< $(tty); then
    colors=("pretty" "chinese" "emacs")
    sed -i "s/pretty\|chinese\|emacs/${colors[$((RANDOM%3))]}/g" ~/.Xresources
    xrdb -remove && xrdb -load ~/.Xresources
    unset colors
fi

alias nvrun="__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia"
alias vim="emacsclient -t"

export PS1="$symbol"
export PS2="→ "
export EDITOR="emacsclient -t"
export ALTERNATE_EDITOR=""
export TERMINAL=urxvtc
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export QT4_IM_MODULE=xim
export QT_SCALE_FACTOR=1.6
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GDK_SCALE=1.6
export GUILE_AUTO_COMPILE=0
export MALLOC_TRACE=/home/cheon/Downloads/trace.log

export PYTHONPATH=/home/cheon/Codes/dockeraily/python/site-packages
# for libreoffice
export SAL_DISABLE_OPENCL=1
# for wayland
# export MOZ_ENABLE_WAYLAND=1
# export GDK_BACKEND=wayland
printf "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n"
if [[ $UID == 1000 ]]; then
    tict random
fi
