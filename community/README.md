# Community Linux Desktop AMI builders

In this folder, you can find different configurations for different Linux distributions, currently not officially supported by Strigo.

You can use these configurations to create your own AMIs, (officially documented [here](http://help.strigo.io/en/articles/4248818-set-up-linux-based-labs-with-a-desktop-interface)), and use them to run [Linux Desktops within Strigo](http://help.strigo.io/en/articles/4245713-configure-lab-interfaces).

While we currently don't offer Packer files for these configurations, you can modify the one we officially provide [here](https://github.com/strigo/ami-bakery-linuxdesktop/blob/master/main.json), and base your AMI provisioning on it.

## Contributions

We'd happily accept contributions to this repository if you run your Linux desktops using other OS distributions (or versions). Simply open a PR, and we'll take a look:

* Create a new folder in this folder the name should be formatted like `DISTROversion` (as in the name of the distribution, immediately followed up by the version).
* Provide the relevant configuration files within that folder (shell scripts, Packer files, example AMIs and their regions).
* Provide a README with some background on the AMI, what it installs and how to use it.
