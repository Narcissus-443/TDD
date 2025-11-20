#!/bin/sh

VERSION="7.2"

sudo mount -t tmpfs -o size=3G tmpfs "$HOME/Downloads"
sudo chown -R "$(whoami)" "$HOME/Downloads"
chmod -R 700 "$HOME/Downloads"
cd "$HOME/Downloads"
wget --https-only --ocsp --ocsp-stapling -U "Mozilla/5.0(X11; Linux x86_64; rv:145.0) Gecko/20100101 Firefox/145.0" --max-threads 1 -c "https://download.tails.net/tails/stable/tails-amd64-$VERSION/tails-amd64-$VERSION.img"
read -n 1 -s -p "Press any key to wipe Tails image file from this device"
rm -f "tails-amd64-$VERSION.img"
cd "$HOME"
sudo umount "$HOME/Downloads"
