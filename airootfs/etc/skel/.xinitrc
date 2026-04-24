#!/bin/bash
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
[[ -f ~/.cache/wal/colors.sh ]] && source ~/.cache/wal/colors.sh
exec i3