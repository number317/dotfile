#!/bin/bash
ln -sfv "$PWD/herbstluftwm" "$HOME/.config"

ln -sfv "$PWD/sway" "$HOME/.config"
ln -sfv "$PWD/alacritty" "$HOME/.config"

ln -sfv "$PWD/zathura" "$HOME/.config"

ln -sfv "$PWD/ranger" "$HOME/.config"

ln -sfv "$PWD/ibus" "$HOME/.config"

ln -sfv "$PWD/neofetch" "$HOME/.config"

ln -sfv "$PWD/dunst" "$HOME/.config"

ln -sfv "$PWD/fontconfig" "$HOME/.config"

ln -sfv "$PWD/gtk-3.0" "$HOME/.config"

ln -sfv "$PWD/picom" "$HOME/.config/"

ln -sfv "$PWD/.bashrc" "$HOME/.bashrc"

ln -sfv "$PWD/.gtkrc-2.0" "$HOME/.gtkrc-2.0"

ln -sfv "$PWD/.mplayer" "$HOME/"

ln -sfv "$PWD/.vim" "$HOME/"
ln -sfv "$HOME/Codes/vim-plugs/" "$PWD/.vim/plugged"
ln -sfv "$HOME/Codes/coc" "$HOME/.config/"
sudo ln -sfv "$PWD/.vim" "/root/"

ln -sfv "$PWD/.emacs.d/" "$HOME/"

ln -sfv "$PWD/.nethackrc" "$HOME/.nethackrc"

ln -sfv "$PWD/.xinitrc" "$HOME/.xinitrc"
ln -sfv "$PWD/.xinitrc" "$HOME/.nvidia-xinitrc"

ln -sfv "$PWD/.Xresources" "$HOME/.Xresources"
ln -sfv "$PWD/.Xresources.d" "$HOME/"

mkdir -p "$HOME/.local/usr/"
rm -rf "$HOME/.local/usr/bin"
ln -sfv "$PWD/myscript" "$HOME/.local/usr/bin"

sudo ln -sfv "$PWD/pacman.conf" "/etc/pacman.conf"

sudo ln -sfv "$PWD/mpd" "$HOME/.config/"

# sudo ln -sfv "$PWD/xorg.conf.d/40-libinput.conf" "/usr/share/X11/xorg.conf.d/40-libinput.conf"
