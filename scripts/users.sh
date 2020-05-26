#!/bin/bash -e

useradd --create-home --user-group --shell /bin/bash --groups "adm,sudo" strigo

# TODO: this needs to be done at boot time
echo strigo:str1g0 | chpasswd

