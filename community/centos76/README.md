# Centos 7.9

# AMI properties

You can use `ami-08b6d44b4f6f7b279` on `eu-central-1` using the `centos` user to build this AMI.

If you'd like to run the AMI in other regions (or try a different version), see https://wiki.centos.org/Cloud/AWS for a list of official CentOS AMIs.

# What this configures

* firewalld to only allow ports 3389 and 22.
* GNOME as the desktop interface.
* xrdp for supporting Strigo RDP connections.

# Our test AMI

We've created `ami-01b0f77a3bc8de7dc` in `eu-central-1` using the `centos` user. You can try it out in Strigo to see how it works.
