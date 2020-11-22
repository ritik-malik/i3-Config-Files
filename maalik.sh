#!/bin/bash

# run as sudo
# a simple script to install the dotfiles & dependencies

# install some essential dependencies
apt install i3 i3lock i3status i3-wm i3blocks compton rofi sysstat lm-sensors brightnessctl imagemagick-6.q16 feh dmenu fonts-font-awesome rofi pulseaudio-utils xbacklight alsa-tools clipit terminator locate pcmanfm acpi libnotify-bin scrot htop -y

cd DOT_FILES
mkdir -p ~/.config/i3
mv ~/.config/i3/config ~/.config/i3/config.bak 2>/dev/null
cp -r config i3blocks.conf i3lock_temp/ ~/.config/i3

mkdir -p /usr/lib/i3blocks
cp -r i3blocks/ /usr/lib/i3blocks

echo Done!
