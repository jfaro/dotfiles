#! /usr/bin/bash

#
# .config files
cp -r ~/.config/fish/ ./.config/                            # fish
cp -r ~/.config/i3/ ./.config/                              # i3
cp -r ~/.config/i3status/ ./.config/                        # i3 statusbar
cp -r ~/.config/kitty/ ./.config/kitty/                     # kitty

#
# etc files
cp /etc/lightdm/lightdm.conf ./etc/lightdm/lightdm.conf     # lightdm