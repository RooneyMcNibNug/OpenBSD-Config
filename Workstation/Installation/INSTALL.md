# Installing an OpenBSD Workstation
---

## Downloading an image
The first step in preparing a machine for OpenBSD is downloading the latest image from either the [official webpage](https://www.openbsd.org/faq/faq4.html#Download)
or a [recognized mirror](https://www.openbsd.org/ftp.html). At the time of writing here, 6.4 is the latest version and (as many of the past versions)
it is offered for [several different architectures](https://www.openbsd.org/plat.html). Do remember to download the respective ```SHA256```
signature file for the image to check later! :wink:

Once you've finished downloading the install image, [write the file(s)](https://www.openbsd.org/faq/faq4.html#MkInsMedia) to the preferred
 medium of your choice - use the ```.fs``` image file for USB, or the ```.iso``` image file for CD-ROM.
 
 For the purposes of the installation setup in this post, we will be mounting the ```install64.iso``` file as a virtual CD-ROM on a VirtualBox 
 VHD.
 
 Once you've attached your install media to the desired workstation machine, boot from the source to start running the install image.
 You will see the bootup start and await your input at the following point:
 
 ![boot screen](https://raw.githubusercontent.com/RooneyMcNibNug/OpenBSD-Config/master/Workstation/Installation/1boot.png)
 
 We can begin the insatallation process here by typing ```I``` and pressing enter. For what its worth, this installation process should only take 
 up to 10 minutes and is pretty straight forward, although it does not include a graphical interface. I will be selecting the configuration I believe best
 suits a workstation use-case here.
 
 ![think of a fun hostname!](https://github.com/RooneyMcNibNug/OpenBSD-Config/blob/master/Workstation/Installation/2hostname.png)
 
 The first part here is choposing your keyboard layout. Before we get into the selecrtions though, a note about defaults and selection info:
 You might notice the ```[default]``` prepended to the keyboard selection question in the screenshot above. These bracketed options do a really great
 job of offering you the recommended selection based on what the install image is detecting its being ran on in terms of your hardware. Simply pressing enter 
 when you see these will go forth with configuring the bracketed selection. This might not be the choice you want in certain cases, so to
 bring up a list of all selections for each configuration option, press either ```?``` or ```L```.
 
 Next, choose a hostname for your machine to be recognized by. I chose ```blowfish``` here.
 
 After chosing a hostname, you will being to be asked to select your network configuration elements. You _aren't_ required
 to have an internet connection set up at the time of the install, as the system sets are all on the install image already and don't need
 to be downloaded, but if you can it might be a good idea to get a stable NIC connection. We will go over network configuration things
 more in another section anyways.
 
 
 
