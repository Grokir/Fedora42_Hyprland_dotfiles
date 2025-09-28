#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Airplane Mode. Turning on or off all wifi using rfkill. 

notif="$HOME/.config/swaync/images/airplane.png"
# 
# Check if any wireless device is blocked
wifi_blocked=$(rfkill list all | grep -o "Soft blocked: yes")

if [ -n "$wifi_blocked" ]; then
    rfkill unblock all
    notify-send -u low -i "$notif" " Airplane" " mode: OFF"
else
    rfkill block all
    notify-send -u low -i "$notif" " Airplane" " mode: ON"
fi