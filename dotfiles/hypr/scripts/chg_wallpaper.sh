#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "change_wallpaper <path to new wallpaper>"
else

  hyprctl hyprpaper unload all
  hyprctl hyprpaper preload "$1"
  hyprctl hyprpaper wallpaper eDP-1, "$1"
  hyprctl hyprpaper wallpaper HDMI-A-1, "$1"

  echo "wallpaper was change"

fi

