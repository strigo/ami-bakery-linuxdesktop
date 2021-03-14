# Strigo Linux Desktop AMI Bakery

This repository provides a reference for creating an AMI ([Amazon Machine Image](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html)) that supports running Linux Desktops within Strigo.

Strigo uses RDP to connect to the instances, and so we provide an example implementation using [xrdp](http://xrdp.org/).

We use HashiCorp's [Packer](https://www.packer.io/) to build our own images, and so a [Packer file](https://github.com/strigo/ami-bakery-linuxdesktop/blob/master/main.json) is provided to automate the creation of the AMIs in different regions.

To use said AMIs, refer to our documentation:
* [Setting up Linux Desktop labs](http://help.strigo.io/en/articles/4248818-set-up-linux-based-labs-with-a-desktop-interface)
* [Configuring lab interfaces](http://help.strigo.io/en/articles/4245713-configure-lab-interfaces)

## Community Support

By default, we only support (and create) Ubuntu 20-based AMIs.

The `community` folder includes some unofficially supported configurations, which you can use to create your own AMIs using other Linux distributions and versions.

We will happily accept contributions (see the readme in the community folder for more info).
