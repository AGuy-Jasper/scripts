#!/bin/bash

echo "SUSBSYSTEM==”usb”, ATTR{idVendor}=”fe7”, ATTR{idProduct}=”4001”, MODE=”0666”" > /etc/udev/rules.d/50-usb-perms.rules

sudo udevadm control --reload
sudo udevadm trigger

