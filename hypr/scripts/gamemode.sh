#!/bin/bash
#   ____                                          _
#  / ___| __ _ _ __ ___   ___ _ __ ___   ___   __| | ___
# | |  _ / _` | '_ ` _ \ / _ \ '_ ` _ \ / _ \ / _` |/ _ \
# | |_| | (_| | | | | | |  __/ | | | | | (_) | (_| |  __/
#  \____|\__,_|_| |_| |_|\___|_| |_| |_|\___/ \__,_|\___|
#
#

if [ -f $HOME/.config/ml4w/settings/gamemode-enabled ]; then
    hyprctl reload
    rm $HOME/.config/ml4w/settings/gamemode-enabled
else
hyprctl --batch "\
    eval hl.config({ animations = { enabled = false } });\
    eval hl.config({ decoration = { shadow = { enabled = false } } });\
    eval hl.config({ decoration = { blur = { enabled = false } } });\
    eval hl.config({ general = { gaps_in = 0 } });\
    eval hl.config({ general = { gaps_out = 0 } });\
    eval hl.config({ general = { border_size = 1 } });\
    eval hl.config({ decoration = { rounding = 0 } })"
    touch $HOME/.config/ml4w/settings/gamemode-enabled
fi
