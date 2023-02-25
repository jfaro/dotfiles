#! /usr/bin/bash

#
# .config files
CONFIG_DIRS="fish i3 i3status kitty terminator rofi gtk-3.0"

function copy_config_from_dir_to() {
    local from="$2/$1/"
    local to="$3/"

    if [ -d $from ]
    then
        # Make copy of config
        cp -r $from $to
    else
        echo "error: $from does not exist"
    fi
}

# Backup all configs in CONFIG_DIRS
for cfg in $CONFIG_DIRS
do
    copy_config_from_dir_to $cfg "$HOME/.config" "./.config"
done

#
# etc files
cp /etc/lightdm/lightdm.conf ./etc/lightdm/lightdm.conf     # lightdm