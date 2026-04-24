cat > airootfs/root/.zshrc << 'EOF'
# Auto-run CoreOS installer on first tty1 login
if [[ $(tty) == "/dev/tty1" && -z "$DISPLAY" && -x /usr/local/bin/coreos-installer.sh ]]; then
    # Guard against infinite loops or re-runs
    if [[ ! -f /tmp/.coreos-installer-ran ]]; then
        touch /tmp/.coreos-installer-ran
        exec /usr/local/bin/coreos-installer.sh
    fi
fi
EOF
