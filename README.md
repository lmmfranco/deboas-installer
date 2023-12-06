# DEBoas Installer

Deboas Installer is a VERY simple shell script for quickly installing Debian packages. It was created simply because I was tired of having to open a terminal and type `sudo dpkg -i <file>` every time I wanted to install a .deb file (Talking about you, discord).

## Installation

To install Deboas Installer, just download the repository and run the following command:

```sh
git clone https://github.com/lmmfranco/deboas-installer.git
cd deboas-installer
./install.sh
```

This will create a .desktop file and install it to your system, making Deboas Installer available as an application.

## Usage
To use Deboas Installer, select a .deb file and use the "Open with..." option to select Deboas Installer. The script will then install the selected package. After is is set as the default application for .deb files, you can simply double-click a .deb file to install it.

## What it does
It simply opens your default terminal and runs these 3 commands in sequence:
```sh
sudo dpkg -i myfile.deb
sudo apt-get install -f
sudo apt-get autoremove -y
```

## Uninstallation
To uninstall Deboas Installer, run the following command:

```sh
./uninstall.sh
```

This will remove the .desktop file from your system.
