#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Devraj Charan (24BAI10717)

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================"
echo "        Directory Audit Report          "
echo "========================================"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, and group using awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Extract directory size, suppressing errors for inaccessible files
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions/Owner: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "----------------------------------------"
# Check if LibreOffice's config directory exists and print its permissions
CONFIG_DIR="$HOME/.config/libreoffice"

if [ -d "$CONFIG_DIR" ]; then
    echo "Found software config: $CONFIG_DIR"
    CONFIG_PERMS=$(ls -ld "$CONFIG_DIR" | awk '{print $1, $3, $4}')
    CONFIG_SIZE=$(du -sh "$CONFIG_DIR" 2>/dev/null | cut -f1)
    echo "$CONFIG_DIR => Permissions/Owner: $CONFIG_PERMS | Size: $CONFIG_SIZE"
else
    echo "LibreOffice config directory not found at $CONFIG_DIR."
fi