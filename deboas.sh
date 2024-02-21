#!/usr/bin/env bash
set -e
clear="\e[0m"
red="\e[31m"
green="\e[32m"
yellow="\e[33m"
blue="\e[34m"
magenta="\e[35m"
magentab="\e[1;35m"
cyan="\e[36m"

log() {
    echo -e "$1${clear}"
}

pause() {
    echo "Press enter to continue...";
    read
}

log "${magenta}Welcome to ${magentab}Deboas Installer"
log ""


if [ -z "$1" ]; then
    log "${yellow}Select a ${cyan}[.deb]${yellow} file and use ${cyan}\"Open with...\"${yellow} to select Deboas Installer"
    pause
else
    if [ "$1" = ".deb" ]; then
        log "${green}Successfully set as default for .deb files!"
        pause
        exit 0
    fi
    
    log "${yellow}Will install: ${cyan}$1"
    pause

    log "${yellow}Running:${cyan} sudo dpkg -i $1"
    sudo dpkg -i "$1" || true

    log "${yellow}\nRunning:${cyan} sudo apt install --fix-broken"
    sudo apt install --fix-broken

    log "${yellow}\nRunning:${cyan} sudo apt autoremove -y"
    sudo apt autoremove -y

    log ""
    log "${green}Installation complete"
    pause
fi

