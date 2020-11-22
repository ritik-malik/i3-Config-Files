#!/bin/bash

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

#scrot $IMAGE
#convert $IMAGE -scale 10% -scale 1000% -fill black -colorize 25% $IMAGE
#[ -f $TEXT ] || { 
#    convert -size 3000x60 xc:white -font Liberation-Sans -pointsize 26 -fill black -gravity center -annotate +0+0 #'Type password to unlock' $TEXT;
#    convert $TEXT -alpha set -channel A -evaluate set 50% $TEXT; 
#}
#convert $IMAGE $TEXT -gravity center -geometry +0+200 -composite $IMAGE
#convert $IMAGE $ICON -gravity center -composite -matte $IMAGE
#i3lock -u -i $IMAGE

