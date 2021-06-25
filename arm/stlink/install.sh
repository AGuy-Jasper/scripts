#!/bin/bash

cd ~

sudo apt-get install -y gcc build-essential cmake libusb-1.0 libusb-1.0-0-dev libgtk-3-dev pandoc rpm

cd Documents

git clone https://github.com/stlink-org/stlink.git

cd stlink

make clean

sudo make release
sudo make install
sudo make debug
sudo make package

sudo cp -a config/udev/rules.d/* /etc/udev/rules.d/
sudo udevadm control --reload-rules
sudo udevadm trigger
