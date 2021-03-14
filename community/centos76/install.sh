#!/bin/bash -e

yum update -y

# Install and configure firewalld
yum -y install firewalld
service firewalld restart
firewall-cmd --zone=public --add-port=3389/tcp --permanent
firewall-cmd --zone=public --add-port=22/tcp --permanent
firewall-cmd --reload
systemctl enable firewalld

# Install and configure GNOME
yum -y install epel-release deltarpm
yum -y groupinstall "GNOME Desktop" "Graphical Administration Tools"
systemctl set-default graphical.target
systemctl start graphical.target

# Install and configure xrdp
yum -y install xrdp
systemctl enable xrdp
systemctl start xrdp
