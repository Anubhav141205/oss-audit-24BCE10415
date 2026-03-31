#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

if dpkg -s $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    git) echo "Git: distributed version control system" ;;
    apache2) echo "Apache: web server powering the internet" ;;
    mysql) echo "MySQL: open-source database system" ;;
    vlc) echo "VLC: multimedia player supporting all formats" ;;
    *) echo "Unknown package" ;;
esac
