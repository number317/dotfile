#!/bin/bash
echo "link herbstluftwm to /.config/herbstluftwm"
ln -sf "$PWD/herbstluftwm" "$HOME/.config/herbstluftwm"

echo "link ranger to ~/.config/ranger"
ln -sf "$PWD/ranger" "$HOME/.config/ranger"

echo "link gtk-3.0 to ~/.config/herbstluftwm"
ln -sf "$PWD/gtk-3.0" "$HOME/.config/gtk-3.0"

echo "link .bashrc to ~/.bashrc"
ln -sf "$PWD/.bashrc" "$HOME/.bashrc"

echo "link .gtkrc-2.0 to ~/.gtkrc-2.0"
ln -sf "$PWD/.gtkrc-2.0" "$HOME/.gtkrc-2.0"

echo "link .mplayer to ~/.mplayer"
ln -sf "$PWD/.mplayer" "$HOME/.mplayer"

echo "link .vim to ~/.vim"
ln -sf "$PWD/.vim" "$HOME/.vim"

echo "link .nethackrc to ~/.nethackrc"
ln -sf "$PWD/.nethackrc" "$HOME/.nethackrc"

echo "link .xinitrc to ~/.xinitrc"
ln -sf "$PWD/.xinitrc" "$HOME/.xinitrc"

echo "link herbstluftwm to ~/.config/herbstluftwm"
ln -sf "$PWD/.Xresources" "$HOME/.Xresources"

echo "link pacman.conf to /etc/pacman.conf"
sudo ln -sf "$PWD/pacman.conf" "/etc/pacman.conf"

echo "link xorg.conf.d/70-synaptics.conf to /etc/X11/xorg.conf.d/70-synaptics.conf"
sudo ln -sf "$PWD/xorg.conf.d/70-synaptics.conf" "/etc/X11/xorg.conf.d/70-synaptics.conf"
