# Why would I want to use OpenBSD as a workstation?
---
At first run, OpenBSD can seem intimidating, especially for the 
unfamiliar.

As someone who took the dive into linux as a self-learner, trying 
OpenBSD for the first time was a bit confusing. Luckily, the manual 
pages for OpenBSD are notoriously detailed and robust. 
 
There are a lot of advantages to using OpenBSD in general, but through 
time it seems to have become more apt as a workstation OS in many 
occasions (albiet with a little tweaking, which we will go through).

## Stability
OpenBSD is often evangalized as one of the soundest "works out of the 
box" systems, and I tend to agree. A big part of this is probably the 
"less code, less problems" development mindset behind the OS.

Another factor of stability is the fact that OpenBSD runs great on a lot 
of different architectures, as well as older hardware and within virtual 
machines. I've been running the OS on-and-off on both a VirtualBox 
instance and an older T-series Thinkpad with almost zero problems for 
~2yrs combined now.

## Security
Regardless of the use case, if you happen to ask someone running OpenBSD 
what the main reason was for chosing it in particular, the short answer 
is likely to be ["security"](https://www.openbsd.org/security.html).

OpenBSD has some awesome mitigation applications off the bat - things 
like ```doas``` (a great sudo alternative), ```pledge``` and ```karl``` 
(further details on these in other sections) that not only have you situated 
with a practically secure setup from the start, but further allow the 
crafting of a safer and more customized environment through applied 
principals of entropy, permissions, encryption, etc.

## "Libre"
OpenBSD uses _only_ free software and components in its base system - down to the source and even binaries. When you're using OpenBSD you're using an OS that is fully open source and thus "free" software, and you're supporting the collaborative development of a system [free to redistribute](https://www.openbsd.org/policy.html).

