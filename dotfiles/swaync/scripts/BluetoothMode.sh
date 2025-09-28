#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Airplane Mode. Turning on or off all wifi using rfkill. 

notif="$HOME/.config/swaync/images/bluetooth.png"
# 
# Check if any wireless device is blocked
wifi_blocked=$(rfkill list bluetooth | grep -o "Soft blocked: yes")

if [ -n "$wifi_blocked" ]; then
    rfkill unblock bluetooth
    notify-send -u low -i "$notif" " Bluetooth" " mode: ON"
else
    rfkill block bluetooth
    notify-send -u low -i "$notif" " Bluetooth" " mode: OFF"
fi