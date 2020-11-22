# i3-Config-Files
## Contains all the i3 config files
### i3 + Arch = <3
This repo contains all the dotfiles files for i3 in Arch/Ubuntu <br><br>

#### TODO : <br>
* make a script for autoinstallation <br>
* change source code + add new files <br>
* add dependencies <br><br>



## deprecated stuff
------------------------------------------------------------

### Steps
* Install i3 & other tools <br>
`sudo apt install i3 i3lock i3status i3-wm` <br>
`sudo pacman -S i3 i3lock i3status i3-wm`<br>
* Other desired packages <br>
`feh fonts-font-awesome rofi pulseaudio-utils xbacklight alsa-tools clipit gcc git terminator locate pcmanfm acpi libnotify-bin scrot`

* Change the default config as backup<br>
> located in .config/i3/config <br>

`mv ~/.config/i3/config ~/.config/i3/config.bak` <br>
Replace it with new `config` in this repo <br>

### Tweaks
##### Workspace nomenclature -
From line number 95 in config file<br>
Set the workspace names <br>
Can also use *[font awesome cheatsheet](https://fontawesome.com/cheatsheet?from=io)* for icons

##### Assign apps to default workspace
From line 130 in cofig file <br>
Use `xprop | grep WM_CLASS | awk '{ print $4 }'` & then click on the app to find out it's class <br>
Set it to desired workspace <br>
Now whenever you open it, it defaults to that workspace <br>
**Some offical issues with spotify, so command is a bit different for it**

##### i3 bar
Start i3bar to display a workspace bar + the system information by custom scripts <br>
Line number 202 in cofig file -<br>
1. Set the bar position
2. Set the bar config files <br>
* `i3blocks.conf` in this repo is the bar config file
* Contains links to scripts from `/usr/lib/i3blocks`
* Can also add icons to them

##### i3 blur lock
* A normal i3 lock turned to logo & blur background
* Line number 212 in config file points to the `blur_lock.sh` in this repo
* It's a bash sript to take a screenshot; add blur effect; add logo; & put it as i3 screen lock

##### Pusle Audio Controls
* Line number 222
* To bind audio key shortcuts in keyboard
* Also binds the mute key

##### Sreen brightness controls
* Line number 226
* Binds the brightness shortcuts on keyboard
* Can also use `brightnessctl` in terminal

##### Other stuff
* Media player controls
* Toggle touchpad
* Dmenu, rofi
* Feh for wallpaper
* Xinput to enable touchpad at startup (sometimes not enabled by default)
* Compton for smooth transition, fading effect
* Blank screen settings
* Use `exec_always` for startup scripts

#### TODO
* Add better documentation
* Blah Blah
* Might switch to void with openbox/dwm :P
