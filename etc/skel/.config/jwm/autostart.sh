#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#change your keyboard if you need it
#setxkbmap -layout be

#Some ways to set your wallpaper besides variety or nitrogen
#feh --bg-scale ~/.config/bspwm/wall.png &
feh --bg-scale /usr/share/backgrounds/arcolinux/escape-to-italy-1920x1200.jpg &
#feh --randomize --bg-fill ~/Képek/*
#feh --randomize --bg-fill ~/Dropbox/Apps/Desktoppr/*

xsetroot -cursor_name left_ptr &
sxhkd -c ~/.config/jwm/sxhkd/sxhkdrc &
run variety &
run nm-applet &
run pamac-tray &
run xfce4-power-manager &
numlockx on &
blueberry-tray &
compton --config $HOME/.config/jwm/compton.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
#nitrogen --restore &
#run caffeine &
#run vivaldi-stable &
#run firefox &
#run thunar &
#run dropbox &
#run insync start &
#run discord &
#run spotify &
#run atom &
