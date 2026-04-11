#!/usr/bin/env bash
# Runs during archiso build to customize the live environment

set -e -u

# Copy skel files to root user's home
cp -rT /etc/skel /root
chown -R root:root /root

# Ensure permissions
chmod 700 /root/.config
chmod 700 /root/.gnupg 2>/dev/null || true

# Set zsh as default shell for root (already in passwd, but ensure)
chsh -s /usr/bin/zsh root