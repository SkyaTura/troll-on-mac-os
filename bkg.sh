#!/bin/bash

if [ ! -f /tmp/kid.jpg ]; then
  kid_url=$(curl -L https://github.com/SkyaTura/troll-on-mac-os/raw/master/file.txt)
  curl $kid_url -o /tmp/kid.jpg
fi

osascript -e 'tell application "System Events" -- activate' -e 'end tell'
osascript -e 'tell application "System Events" to set picture of every desktop to ("/tmp/kid.jpg" as POSIX file as alias)'
