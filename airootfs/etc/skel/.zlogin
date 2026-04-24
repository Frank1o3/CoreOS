# Auto-start X on tty1
if [[ -z "$DISPLAY" ]] && [[ "$(tty)" == "/dev/tty1" ]]; then
    exec startx > ~/.xorg.log 2>&1 || {
        echo ""
        echo "WARNING: startx failed. Check ~/.xorg.log for details."
        echo "Dropping to shell. Run 'startx' manually to retry."
    }
fi