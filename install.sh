#!/bin/bash

# Theme installation directory
THEME_DIR="/usr/share/sddm/themes/Makima"

# Check if running as root
if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit 1
fi

# Create theme directory
mkdir -p "$THEME_DIR"

# Copy theme files
cp -r * "$THEME_DIR/"
rm -f "$THEME_DIR/install.sh"

echo "Makima theme has been installed successfully!"
echo "To activate the theme, edit /etc/sddm.conf and set:"
echo "  [Theme]"
echo "  Current=Makima" 