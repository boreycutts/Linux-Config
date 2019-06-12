#!/bin/bash
# until [ 1 -eq 2 ]; do

# Script to randomly set Background from files in a directory

# Directory Containing Pictures
DIR="/home/borey/Git/linux-config/wallpapers"

# Command to Select a random jpg file from directory
# Delete the *.jpg to select any file but it may return a folder
PIC=$(ls $DIR/*.png | shuf -n1)

# Command to set Background Image
# gconftool -t string -s /desktop/gnome/background/picture_filename $PIC

feh --bg-scale $PIC

# sleep 60s
# done
