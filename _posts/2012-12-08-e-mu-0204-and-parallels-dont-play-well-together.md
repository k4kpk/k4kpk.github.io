---
categories: []
layout: post
title: E-MU 0204 and Parallels Don't Play Well Together
created: 1355008095
redirect_from: /content/e-mu-0204-and-parallels-dont-play-well-together
---
I bought an E-MU 0204 USB sound card to go with my Softrock Lite II (built for 20 meters).  I wanted to get 96 kHz sampling, in order to expand the tunable range on my Softrock.  I wanted USB because I'm running my SDR software in a VM, so I can run it in Windows XP or Ubuntu 12.  (Few SDR packages work on Windows with a sound card based SDR.)

I installed the E-MU drivers, rebooted the VM and boom - it crashed.  I removed, reinstalled, rebooted several times.  The VM is just unstable when the E-MU is connected to it and the E-MU software is installed.  When the VM crashes, Parallels recognizes that it was a Parallels problem, and it goes into its let's-report-a-Parallels-crash routine.  (This is with Parallels Desktop 7.0.15104, Revision 778994; July 10, 2012 and Windows XP Pro with all patches applied through July 27.)

I did a little Googling, and found someone else who had a problem with an E-MU 0202 USB causing Parallels to crash with Windows (Win 7 and Win XP in his case).  He found happiness by using VMware Fusion.  I installed VMware Fusion 4.1.3 (730298) and imported my Parallels VM.  E-MU 0202 works just fine in Fusion.

In general, I like the feel and performance of Parallels, but this is not the first incompatibility I've found with Parallels.  VMware does a more trouble-free VM, in my experience.
