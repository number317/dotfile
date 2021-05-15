# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ls='ls --color'
alias git="git -P"
alias pacman='pacman --color auto'
alias grep='grep --color=auto'

alias ec="emacsclient -t"
alias gec="emacsclient -nc"


export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'
export LESS_TERMCAP_md=$'\E[1;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[1;32m'

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

ranger() {
    if [ -z "$RANGER_LEVEL" ]; then
        /usr/bin/ranger "$@"
    else
        exit
    fi
}

# set -o vi
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
    colors=("pretty" "chinese" "paraiso_light" "random")
    if [[ $(date +%H) < 17 ]]; then
        # light theme in daylight
        sed -i "s/pretty\|chinese\|paraiso_light\|random/chinese/g" ~/.Xresources
    else
        sed -i "s/pretty\|chinese\|paraiso_light\|random/${colors[$((RANDOM%4))]}/g" ~/.Xresources
    fi
    xrdb -remove && xrdb -load ~/.Xresources
    unset colors
fi

export PS1="$symbol"
export PS2="→ "
export EDITOR="emacsclient -t"
export ALTERNATE_EDITOR=""
export BROWSER="firefox"
export TERMINAL=urxvtc
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export QT4_IM_MODULE=xim
export GDK_SCALE=1.5
export GDK_DPI_SCALE=0.67
export GUILE_AUTO_COMPILE=0
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export MALLOC_TRACE=/home/cheon/Downloads/trace.log

export ANDROID_SDK_ROOT=/opt/android-sdk
export ANDROID_HOME=/opt/android-sdk
export ANDROID_SWT=/usr/share/java
export PATH=${PATH}:/${HOME}/.local/usr/bin:${ANDROID_SDK_ROOT}/tools:${ANDROID_SDK_ROOT}/tools/bin:${ANDROID_SDK_ROOT}/emulator:/${ANDROID_SDK_ROOT}/platform-tools

export PYTHONPATH=/home/cheon/Codes/dockeraily/python/site-packages
# for libreoffice
export SAL_DISABLE_OPENCL=1
# for wayland
# export MOZ_ENABLE_WAYLAND=1
# export GDK_BACKEND=wayland

gsettings set org.gnome.desktop.interface gtk-theme 'Mojave-light'
gsettings set org.gnome.desktop.interface icon-theme 'Mojave-light'
# gsettings set org.gnome.desktop.interface cursor-theme 'Mojave-light'
gsettings set org.gnome.desktop.interface font-name 'DejaVu Sans 16'
