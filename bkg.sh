#!/bin/bash

if [ ! -f /tmp/kid.jpg ]; then
  kid_url=$(curl -L https://gist.githubusercontent.com/SkyaTura/1d41e9db743811dad0749a72ce2978c2/raw/file.txt)
  curl $kid_url -o /tmp/kid.jpg
fi

osascript -e 'tell application "System Events" -- activate' -e 'end tell'
osascript -e 'tell application "System Events" to set picture of every desktop to "/tmp/kid.jpg"'
