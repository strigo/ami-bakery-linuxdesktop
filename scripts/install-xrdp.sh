#!/bin/bash -e

apt-get install -y xrdp

cp /etc/xrdp/xrdp.{ini,ini.bak}
cp /tmp/configs/xrdp.ini /etc/xrdp
