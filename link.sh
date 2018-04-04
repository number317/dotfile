#!/bin/bash
ln -sfv "$PWD/herbstluftwm" "$HOME/.config/herbstluftwm"

ln -sfv "$PWD/ranger" "$HOME/.config/ranger"

ln -sfv "$PWD/gtk-3.0" "$HOME/.config/gtk-3.0"

ln -sfv "$PWD/.bashrc" "$HOME/.bashrc"

ln -sfv "$PWD/.gtkrc-2.0" "$HOME/.gtkrc-2.0"

ln -sfv "$PWD/.mplayer" "$HOME/.mplayer"

ln -sfv "$PWD/.vim" "$HOME/.vim"

ln -sfv "$PWD/.nethackrc" "$HOME/.nethackrc"

ln -sfv "$PWD/.xinitrc" "$HOME/.xinitrc"

ln -sfv "$PWD/.Xresources" "$HOME/.Xresources"

sudo ln -sfv "$PWD/pacman.conf" "/etc/pacman.conf"

sudo ln -sfv "$PWD/xorg.conf.d/70-synaptics.conf" "/etc/X11/xorg.conf.d/70-synaptics.conf"
