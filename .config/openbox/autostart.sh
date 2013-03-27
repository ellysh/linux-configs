## Openbox autostart.sh
## ====================
## When you login to your CrunchBang Openbox session, this autostart script 
## will be executed to set-up your environment and launch any applications
## you want to run at startup.
##
## More information about this can be found at:
## http://openbox.org/wiki/Help:Autostart
##
## If you do something cool with your autostart script and you think others
## could benefit from your hack, please consider sharing it at:
## http://crunchbanglinux.org/forums/
##

## Launch panel
(sleep 3s && tint2) &

## Start Conky after a slight delay
(sleep 3s && conky -q) &

## Start keyboard layout indicator
(sleep 3s && fbxkb) &

## Fix Layout
setxkbmap "us,ru" ",winkeys" "grp:lwin_toggle,grp_led:scroll"

## Start dropbox
(sleep 3s && /home/elly/.dropbox-dist/dropbox) &

## Launch network manager applet
#(sleep 3s && wicd-gtk -t) &
