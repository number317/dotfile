#!/bin/bash
ln -sfv "$PWD/herbstluftwm" "$HOME/.config"

ln -sfv "$PWD/ranger" "$HOME/.config"

ln -sfv "$PWD/gtk-3.0" "$HOME/.config"

ln -sfv "$PWD/.bashrc" "$HOME/.bashrc"

ln -sfv "$PWD/.gtkrc-2.0" "$HOME/.gtkrc-2.0"

ln -sfv "$PWD/.mplayer" "$HOME/"

ln -sfv "$PWD/.vim" "$HOME/"

ln -sfv "$PWD/.nethackrc" "$HOME/.nethackrc"

ln -sfv "$PWD/.xinitrc" "$HOME/.xinitrc"

ln -sfv "$PWD/.Xresources" "$HOME/.Xresources"

mkdir -p "$HOME/.local/usr/"
rm -rf "$HOME/.local/usr/bin"
ln -sfv "$PWD/myscript" "$HOME/.local/usr/bin"

sudo ln -sfv "$PWD/pacman.conf" "/etc/pacman.conf"

sudo ln -sfv "$PWD/xorg.conf.d/70-synaptics.conf" "/etc/X11/xorg.conf.d/70-synaptics.conf"
