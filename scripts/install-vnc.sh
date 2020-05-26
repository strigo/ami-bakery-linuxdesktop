#!/bin/bash -e

apt-get install -y tigervnc-standalone-server

mkdir /home/strigo/.vnc/
# TODO: this needs to be configured at boot time or integrated with PAM
echo "str1g0" | vncpasswd -f > /home/strigo/.vnc/passwd
chmod 600 /home/strigo/.vnc/passwd

cp /tmp/configs/xstartup.sh /home/strigo/.vnc/
cp /tmp/configs/vnc.conf /home/strigo/.vnc/
cp /tmp/configs/vncserver@.service /etc/systemd/system/

chown -R strigo:strigo /home/strigo/.vnc/

systemctl enable vncserver@:1.service
