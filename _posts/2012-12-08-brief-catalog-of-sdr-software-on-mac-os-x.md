---
categories: []
layout: post
title: Brief Catalog of SDR Software on Mac OS X
created: 1355007830
redirect_from: /content/brief-catalog-sdr-software-mac-os-x
---
Here are some of the SDR programs I've looked at.  

#My environment#
* My primary PC is a Macbook Pro, running OS X Lion.  I've got VMware and Parallels to run Windows and Ubuntu. I'd prefer a native Mac program, because that's simpler, and I've seen some anomalies in running SDRs in my VMs which *might* be because they don't get 100% of the CPU power.
* My SDR hardware is a Softrock Lite II built for 20 meters.
* Sound Card: Both my Macbook's built-in audio and an E-MU 0204 USB.  When I run in a VM, the VM emulates a sound card derived from the Mac's built-in audio, and I can also connect the E-MU USB to the VM as a USB device, so the VM sees it as if it were a native E-MU 2024.

Note: If it looks like NOTHING is coming in from the sound card, hook up an audio source (such as your iPod headphone jack) to the audio input on your computer, and see if Sound Recorder can record it.  Get that working.  Then feed your audio source into Rocky (or other SDR program).  It won't render as a coherent audio signal, but you should see lots of spectrum activity.  This allows you to separate audio input issues from SDR hardware issues.

#The Programs#
* __Rocky 3.7__
    * URL: http://www.dxatlas.com/Rocky/  (see also http://www.wb5rvz.com/sdr/sr_lite_ii/07_extconn.htm)
    * Platform: Windows XP
    * Works: Yes
    * Advantages:
        * Simple. 
    * Disadvantages:
        * No DSP beyond bandpass filter width.
        * I only get 44 kHz from my sound card in my VM.  The Mac hardware does 96 kHz.
        * Reportedly has problems on Windows 7
    * Make it go (after installing):
        * View/Settings, Audio tab:
            * Select I/O Input Device to match where the Softrock is plugged in
            * Set sampling rate to 48 kHz
        * View/Settings, DSP tab:
            * Set Local Oscilator to Single Band
            * Set Local Oscilator to frequency 14047500
        * View, select Waterfall
        * File/Start Radio
* __DSP Radio 1.3.5__
    * URL: http://dl2sdr.homepage.t-online.de/
    * Platform: OS X
    * Works: Yes, but...
    * Advantages:
        * Works with OS X.
        * 96 kHz bandwidth with the native Mac audio input
    * Disadvantages:
        * Very 'fiddly.'  It is easy to get it so messed up you have to uninstall/reinstall.
        * Its display sometimes freezes, and you have to restart it.
        * I can't figure out how to set the width of the received signal.
        * No DSP beyond bandpass filter width and filter shape.
    * Make it go" (after copying to /Applications):
        * See http://www.kleinfelter.com/content/set-dsp-radio-135-softrock-lite-ii-20-meters
* __CuteSDR__
    * URL: http://sourceforge.net/projects/cutesdr/
    * Platform: OS X
    * Works: No.  Does not support Softrock Lite.
* __Gqrx__
    * URL: http://www.oz9aec.net/index.php/gnu-radio/gqrx-sdr
    * Platform: Linux
    * Works: No. Does not support Softrock Lite.
* __SdrNetSetup__
    * URL: ?
    * Platform: ?
    * Works: No. Supports "network connected software defined radios"
* __QtRadio__
    * URL: http://napan.ca/ghpsdr3/index.php/QtRadio_Installation
    * Platform: Windows, Linux, OS X (maybe)
    * Works: I've seen some guy's posting "After several days of hacking I finally have a running version of QtRadio on my Mac", but I haven't found him or his hacked version yet.
    * Advantages:
        * ?
    * Disadvantages:
        * ?
    * Make it go (after installing):
        * ?

* __someAppThatWorks__
    * URL:
    * Platform:
    * Works:
    * Advantages:
        * ?
    * Disadvantages:
        * ?
    * Make it go (after installing):
        * ?

... more to follow
