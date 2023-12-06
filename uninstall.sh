#!/usr/bin/env bash
set -e
xdg-desktop-menu uninstall lmmfranco-deboas.desktop
xdg-desktop-menu forceupdate
echo "Done"