#!/bin/bash
# a script to take ss, add blur effect, add logo & set as i3lock

scrot i3lock1.png
scrot i3lock2.png

IMAGE=$HOME/.config/i3/i3lock_temp/logo.png
IMAGE1=i3lock1.png
IMAGE2=i3lock2.png


convert -brightness-contrast -30x-50 $IMAGE1 $IMAGE1

convert -filter Gaussian -resize 25% -resize 400% $IMAGE1 $IMAGE1

convert $IMAGE1 -crop 1920x1080+0+0 $IMAGE2  
composite -gravity center $IMAGE $IMAGE2 $IMAGE2

convert $IMAGE2 +append $IMAGE1

i3lock -i $IMAGE1

rm $IMAGE1 $IMAGE2


