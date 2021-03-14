#!/bin/bash -e

# This is based off of https://linuxize.com/post/how-to-install-xrdp-on-ubuntu-18-04/

apt-get update -y
apt-get upgrade -y

apt install xrdp xorg dbus-x11 x11-xserver-utils -y
# Skip this if xcfe is already installed.
apt install xfce4 xfce4-goodies -y
adduser xrdp ssl-cert
systemctl restart xrdp
ufw allow 3389
