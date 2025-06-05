#!/usr/bin/env bash

if [[ $1 =~ ^[0-9]$ ]]; then
    notify-send "change-workspace bspwm error (invalid workspace)"
    exit
fi

if [[$(xrandr -q | grep " connected" | wc -l) -eq 1 ]]; then
  bspc desktop -f "$1"
  exit
fi

focused_monitor="$(bspc query -M -m focused --names)"

hostname = $(cat /etc/hostname)
if [[ $hostname == laptop ]]; then
  case $focused_monitor in
    eDP-1)
      bspc desktop -f "$1"
    ;;
    HDMI-2)
      bspc desktop -f "^2:$1"
    ;;
    *)
    ;;
  esac
fi
