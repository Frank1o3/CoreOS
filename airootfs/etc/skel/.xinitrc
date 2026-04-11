#!/bin/sh
# Load X resources if available
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
# Load pywal colors if available
[[ -f ~/.cache/wal/colors.sh ]] && source ~/.cache/wal/colors.sh
# Start i3
exec i3