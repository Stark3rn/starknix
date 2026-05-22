#!/usr/bin/env bash

CHOICE=$(echo -e "⏻ Shutdown\n Reboot\n Logout\n Suspend" | rofi -dmenu -i -p "Power" -theme ~/.config/rofi/stormy-canal)

case "$CHOICE" in
  *Shutdown) systemctl poweroff ;;
  *Reboot) systemctl reboot ;;
  *Logout) bspc quit ;;
  *Suspend) systemctl suspend ;;
esac
