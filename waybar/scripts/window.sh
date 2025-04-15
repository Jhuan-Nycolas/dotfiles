#!/usr/bin/env bash

config="$HOME/.config/rofi/window.rasi"

# Display logout menu
rofi -show drun -p " " -config "${config}" || pkill -x rofi
