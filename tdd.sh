#!/bin/sh

VERSION="7.2"

sudo mount -t tmpfs -o size=3G tmpfs "$HOME/Downloads"
sudo chown -R "$(whoami)" "$HOME/Downloads"
chmod -R 700 "$HOME/Downloads"
cd "$HOME/Downloads"
wget –continue "https://download.tails.net/tails/stable/tails-amd64-$VERSION/tails-amd64-$VERSION.img"
read -n 1 -s -p "Press any key to wipe Tails image file from this device"
rm -f "tails-amd64-$VERSION.img"
cd "$HOME"
sudo umount "$HOME/Downloads"
