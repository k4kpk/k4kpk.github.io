---
categories: []
layout: post
title: Waterfall Display (Panadapter) for My KX3
created: 1376834333
redirect_from: /content/waterfall-display-panadapter-my-kx3
---
I want to try PSK31 with my KX3.  It looks like a panadapter (waterfall display) will be really handy for that.  Here's my story of how I got the panadpter going.

I decided on NaP3 because it seems to be relatively popular, it focuses on display (as opposed to rig control or contest logging), and it is available for multiple operating systems, in case I change my mind about which PC I'm going to use to run it.  Other people seem to setup NaP3 on top of a layer of com-port virtualization software, in order to permit multiple programs to talk to their KX3 at the same time.  I might do that later, but I'm going to start without it, on the basis that debugging one package at a time is complicated enough!

## Do This First

* Join http://groups.yahoo.com/group/NaP3/

## New PC 

I've got an unused PC with no OS.  First, pick an OS.  I could run OS X, Linux, or Windows.  I'm comfortable with any of them.  I chose Windows 7 as the most "mainstream," to give me access to the same software that the average ham is using.  

* Build PC using fast CPU and 8 GB RAM.
* Install and activate 64-bit Windows 7.
* Install motherboard drivers from vendor web site.

## Install NaP3

* Download the latest 'beta' from http://groups.yahoo.com/group/NaP3/links (I got 2.2.4.2).
* Unzip it and run setup.msi
* Right-click and set compatibility mode on the .exe to Windows XP SP3.  Without this, it would briefly (sub-second) display a screen and quit/crash.

## Cables and Drivers

* Install the driver for the KX3 USB cable.  
    * Go to the Elecraft site
    * Follow the pointer to the http://www.ftdichip.com/Drivers/VCP.htm site
    * Download the .exe setup
    * Run it with admin privilege.  Windows says it failed, but offers to try harder the next time.  (i.e. To try again with recommended settings.)  Tell it to try again.
    * Find the KX3 USB cable.  Plug in the cable.  Watch Windows tell you (via toast) that the new device is ready to use.
    * Find the KX3 I/Q cable.  Plug the cable into the KX3.  Plug the other end into the blue audio jack on the computer.  The computer asks whether I want to use this jack for Line In or several other things, and I pick Line In.
    * Download the KX3 Utility from http://www.elecraft.com/KX3/KX3_software.htm
    * Install the KX3 Utility.  Run it.
        * Refresh the port list
        * Pick the port.  In my case, it was COM3.  I'll use COM3 throughout this doc.  If yours is different, you make the substitution.  Mine connected at 38400 baud, and I think that's desirable.
        * I like to go to the Configuration tab and Edit CW Memories, to see that it is really connected and working.
        * Exit the utility

## Configure Radio
    * Menu: RX I/Q = On
        * Note: Your radio will consume batteries a little faster when this is enabled, so you might want to disable it before you go portable (if you're not using your panadapter when portable).
## Configuring Sound
    * Windows used to have a nice little sound recorder which would show you the input level as you recorded.  Win7 has a simplified recorder which shows you nothing.  Download and install http://audacity.sourceforge.net.  It shows you the input audio levels. This can be handy for debugging things, if they don't work.
    * Start / Control Panel / Sound / Recording / Line-in / Properties / Advanced
        * Set the sampling rate to 2 channel, 24-bit, 48kHz.  Later, you might want to try higher.  At first, you want to use this rate because you can count on it actually being supported by your card.
    * Turn on the radio, tune it to 15.0, and turn down the volume.
    * Start NaP3
        * Configure / Audio.  Set sample rate to 48 kHz.  OK.
        * Configure / Rig. KX3, COM3, 38400. OK.
        * Choose the "Run" menu.  You should see a waterfall.  You should hear WWV on your computer speakers.
