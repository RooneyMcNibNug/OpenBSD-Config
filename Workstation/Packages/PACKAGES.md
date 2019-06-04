# Packages in OpenBSD
---

## Package System
After using OpenBSD's package system for a while, you will hopefully be pleased with its simplicity. Personally, I find it easier and straight-forward compared even to systems like APT. The official OpenBSD site also has a great page for Package Management FAQ [here](https://www.openbsd.org/faq/faq15.html).

## Mirrors
There are a number of mirrors that act as a hosted directories for OpenBSD packages available to choose from. These are basically repos to install applications to your workstation. On my latest install, the default mirror configured during install was  	https://cdn.openbsd.org/pub/OpenBSD/. You can either keep your installed mirror, or edit the ```/etc/installurl``` on your workstation to include another mirror of your choice (please consider only using mirrors with TLS!)

## Finding and Installing Software
Most of the managment and configuration of packages will be done through the ```pkg_info``` and ```pkg_add``` commands. A quick way of listing what packages you currently have installed on your ssystem is using the ```pkg_info -a``` option:

![check](https://raw.githubusercontent.com/RooneyMcNibNug/OpenBSD-Config/master/Workstation/Packages/pkg_info_installed.png)

In terms of looking for software to install, you can go about this in a few different ways. I do recommend initially looking through the packages directory (on the mirror of your choice) for your proper OpenBSD version and architecture - in this case, we are using the aformentioned default mirror, so we can go to the directory https://cdn.openbsd.org/pub/OpenBSD/6.4/packages/amd64/ and get a full list of packages available.

From here, we can search for what we'd like to install. I've gone ahead and [created a text file](https://github.com/RooneyMcNibNug/OpenBSD-Config/blob/master/Workstation/Packages/pkgs.txt) including all of the packages I want at my disposal for an OpenBSD workstation. One package per line, with ```--``` appended to the end of each package name, which will look for the latest version of each application. We can download this file using something like ```wget``` or ```curl``` from the link to have it locally available:

![wget it](https://raw.githubusercontent.com/RooneyMcNibNug/OpenBSD-Config/master/Workstation/Packages/pkg_add_dash_l.png)

This way, we can just run ```pkg_add``` against the file by using the full command ```pkg_add -l pkgs.txt```:

![adding packages from a list within a file](https://raw.githubusercontent.com/RooneyMcNibNug/OpenBSD-Config/master/Workstation/Packages/pkg_add_dash_l2.png)

For the standard installation of a single package, you can simply use the ```pkg_add``` option, followed by the name of the application. For example, to install the network mapping tool ```nmap``` you could use ```pkg_add nmap```.

## Checking Software, Deleting Software
In rare occasions - such as an unplanned shutdown or system failure during adding or altering packages - a package may have been added incorrectly or pieces of it will be missing due to some corruption. When this occurs, you can attempt to run the ```pkg_check``` option:

![check it out](https://raw.githubusercontent.com/RooneyMcNibNug/OpenBSD-Config/master/Workstation/Packages/pkg_check.png)

This will check the listing configuration, dependencies, and files involved for any irregularities but also may do some "sane" changes if it finds something has gone wrong after running checks (read more details on [the man-page](https://man.openbsd.org/pkg_check)). If you do not want to run any fixes on the package or packages, please make sure to run the ```pkg_check -n``` option to solely do a check with no actions taken directly afterward in the event of finding issues.

If you no longer feel a particular piece of stftware is needed on your OpenBSD workstation, uninstalling it is easy with the ```pkg_delete``` command. Here we will uninstall ```wget``` from a system:

![deleting pkg](https://raw.githubusercontent.com/RooneyMcNibNug/OpenBSD-Config/master/Workstation/Packages/pkg_delete.png)

Clean and simple! If you ever need it back, you know how to get it now. 
