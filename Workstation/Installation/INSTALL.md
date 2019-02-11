# Installing an OpenBSD Workstation
---

## Downloading an image
The first step in preparing a machine for OpenBSD is downloading the latest image from either the [official webpage](https://www.openbsd.org/faq/faq4.html#Download)
or a [recognized mirror](https://www.openbsd.org/ftp.html). At the time of writing this, 6.4 is the latest version and (as many of the past versions)
it is offered for [several different architectures](https://www.openbsd.org/plat.html). Do remember to download the respective ```SHA256```
signature file for the image and [check it](https://www.openbsd.org/faq/faq4.html#Download) against the image! :wink:

Once you've finished downloading and verifying the install image, [write the file(s)](https://www.openbsd.org/faq/faq4.html#MkInsMedia) to the preferred
 medium of your choice - use the ```.fs``` image file for USB, or the ```.iso``` image file for CD-ROM.
 
 For the purposes of the installation setup in this post, we will be mounting the ```install64.iso``` file as a virtual CD-ROM on a VirtualBox 
 VHD.
 
 Once you've attached your install media to the desired workstation machine, boot from the source to start running the install image.
 You will see the bootup start and await your input at the following point:
 
 ![boot screen](https://raw.githubusercontent.com/RooneyMcNibNug/OpenBSD-Config/master/Workstation/Installation/1boot.png)
 
 We can begin the installation process here by typing ```I``` and pressing enter. For what its worth, this installation process should only take 
 up to 15 minutes and is pretty straight forward, although it does not include a graphical interface. I will be selecting the configuration I believe best
 suits a workstation use-case here.
 
 ![think of a fun hostname!](https://github.com/RooneyMcNibNug/OpenBSD-Config/blob/master/Workstation/Installation/2hostname.png)
 
 The first part here is choosing your keyboard layout. Before we begin though, a note about defaults and selection info:
 You might notice the ```[default]``` prepended to the keyboard selection question in the screenshot above. These bracketed options do a really great
 job of offering you the recommended selection based on what the install image is detecting its being ran on in terms of your hardware. Simply pressing enter 
 when you see these will go forth with configuring the bracketed selection. This might not be the choice you want in certain cases, so to
 bring up a list of all selections for each configuration option, press either ```?``` or ```L```.
 
 Next, choose a hostname for your machine to be recognized by. I chose ```blowfish``` here.
 
 After chosing a hostname, you will being to be asked to select your network configuration elements. You _aren't_ required
 to have an internet connection set up at the time of the install, as the system sets are all on the install image already and don't need
 to be downloaded, but if you can it might be a good idea to get a stable NIC connection. We will go over network configurations
 more in another section anyways.
 
 If you _do_ install with an active network connection, you can select the desired interface to run off of and either choose ```dhcp``` to get an available IP from your current network, or assign it an IP of your choice:
 
 ![get wired](https://github.com/RooneyMcNibNug/OpenBSD-Config/blob/master/Workstation/Installation/3network_and_accounts.png)
 
 I have redacted some of the DNS config and other options in this last screenshot, but we can go over some of the options regarding changes to this later (after install).
 
 Once we've finalized these network items, we can move on to the user accounts portion of the install. The root account is the first one we are required to set up a password for. Please ensure you've chosen a strong password - this is the account you will make monumental chnages to your system with!
 
 After the password is created and verified once more, you will be asked if you want to start ```sshd``` (the ssh remote connection daemon) upon boot up by default. This will be covered later, but let's just choose ```no``` for now, as we don't need to mull about this so much (at the time at least) for a workstation.

We will be choosing ```yes``` to the question of if we want to create another user on the system. This is a good security principle operationally - to have a non-root user for basic system usage, so that you only need to elevate to root in the case of changing a configuration, installing something, or other major maintenance of the OS. Name the user how you please and choose an additional password for this login.

Now we move to the preperation of the disk(s) on your system:

![write here, write now](https://github.com/RooneyMcNibNug/OpenBSD-Config/blob/master/Workstation/Installation/4disks.png)

Assuming you have a single drive on this machine, you will most likely be selecting ```[default]``` here, but it is probably best to enter ```?``` to list all the disks found on the system before preparing things to be sure.

The ```[a]``` default option for "Auto" layout of the disks is probably preferred here as well, but this might differ based on your environment.

Once you've confirmed the layout, you will start to see the disk configuration proceed:

![down the river](https://github.com/RooneyMcNibNug/OpenBSD-Config/blob/master/Workstation/Installation/5disks_continued.png)

Now its time to install the meat of the operating system. You'll want to select the sets from the disk in this case, which we'll usually mean hammering the default option given. You'll see the list of the sets to install:

![packed like sardines](https://github.com/RooneyMcNibNug/OpenBSD-Config/blob/master/Workstation/Installation/6sets.png)

I would _highly_ recommend installing all of these sets for a workstation. Having said that, the only required sets to install for a functioing base system here are ```bsd``` and ```base64.tgz```.

If you shoose to remove one of the sets listed here, you can do so by adding a ```-``` to the front of the set name - for example, to remove the ```game``` set, enter ```-game64.tgz```.

Once you've selected the sets you want, hit ```done``` to start installing them. At this point, the installer will let you know that the ```SHA256``` signature file is not on the install image so it can't verify here:

![siggy](https://github.com/RooneyMcNibNug/OpenBSD-Config/blob/master/Workstation/Installation/7sig.png)

Since we already checked this earlier, go ahead and select ```no``` to continue.

The sets should finish installing rather quickly:

![ready, get set, go](https://github.com/RooneyMcNibNug/OpenBSD-Config/blob/master/Workstation/Installation/8sets_finished.png)

All you need to do now is select your timezone for the system time and then you're done!

![yay!](https://github.com/RooneyMcNibNug/OpenBSD-Config/blob/master/Workstation/Installation/9end.png)

You can go ahead and reboot now to start the system with the install media detached. Next, we will go over what to expect and configure after first boot for your OpenBSD Workstation.
