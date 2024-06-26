#!/bin/bash -e

apt-get install -y xfce4 xfce4-goodies

echo "xfce4-session" > /home/ubuntu/.xsession
cat <<EOF > /home/ubuntu/.xsessionrc
export XDG_SESSION_DESKTOP=xubuntu
export XDG_DATA_DIRS=/usr/share/xfce4:/usr/share/xubuntu:/usr/local/share:/usr/share:/var/lib/snapd/desktop:/usr/share
export XDG_CONFIG_DIRS=/etc/xdg/xdg-xubuntu:/etc/xdg:/etc/xdg
EOF
chown ubuntu:ubuntu /home/ubuntu/.xsessionrc /home/ubuntu/.xsession