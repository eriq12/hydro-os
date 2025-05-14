#!/usr/bin/env bash
kwalletmanager5 &
sleep 1 && exec --no-startup-id /usr/lib/pam_kwallet_init
notify-send -e --expire-time=2000 'Kwallet has been loaded. Loading dependent apps...'
sleep 2 && hyprctl dispatch closewindow class:org.kde.kwalletmanager
