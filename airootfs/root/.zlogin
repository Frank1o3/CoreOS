# Auto-launch installer on tty1
if [[ $(tty) == "/dev/tty1" ]]; then
    /usr/local/bin/coreos-install
fi
