#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Devraj Charan (24BAI10717)

PACKAGE="libreoffice" # e.g., httpd, mysql, vlc, firefox, libreoffice

# Check if package is installed (using dpkg for Debian/Ubuntu environments)
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    # Extract version info
    VERSION=$(dpkg -s "$PACKAGE" | grep "^Version" | awk '{print $2}')
    echo "Version: $VERSION"
else
    echo "$PACKAGE is NOT installed on this system."
fi

echo "----------------------------------------"
# Case statement that prints a one-line philosophy note about the package
case $PACKAGE in
    apache2|httpd) 
        echo "Apache: The web server that built the open internet." 
        ;;
    mysql|mysql-server) 
        echo "MySQL: Open source at the heart of millions of apps." 
        ;;
    firefox)
        echo "Firefox: A browser fighting for an open and accessible web."
        ;;
    vlc)
        echo "VLC: The multimedia player that plays anything, built by students."
        ;;
    libreoffice)
        echo "LibreOffice: Born from a community fork, a true lesson in software freedom."
        ;;
    *) 
        echo "$PACKAGE: A valuable piece of the broader open-source ecosystem." 
        ;;
esac