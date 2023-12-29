#!/usr/bin/env bash
set -e
THIS_EXEC=$(realpath "$0")
ROOT_DIR=$(dirname -- "$THIS_EXEC")

icon="$ROOT_DIR/preguica.png"
executable="$ROOT_DIR/launch.sh"
desktop_file="lmmfranco-deboas.desktop"

sed -e "s@SCRIPT_PATH@$executable@" -e "s@ICON_PATH@$icon@" desktop.template > $desktop_file

desktop-file-validate $desktop_file

xdg-desktop-menu install $desktop_file
xdg-desktop-menu forceupdate

echo "Done"