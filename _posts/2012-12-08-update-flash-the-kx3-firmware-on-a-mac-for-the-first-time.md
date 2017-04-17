---
categories: []
layout: post
title: Update/Flash the KX3 Firmware on a Mac For the First Time
created: 1355007381
redirect_from: /content/updateflash-kx3-firmware-mac-first-time
---
### The Project
I have this shiny (almost) new Elecraft KX3 radio.  I'm figuring out how to update the firmware for the first time.  My goal isn't actually updating the firmware -- it is using the utility to configure the radio.  I don't know how to do that either, because I've never hooked up the cables between the radio and the computer, and I figure that updating the firmware is a good project to get familiar with the cabling and the utility.

I'm using a Mac with OS X 10.8, not a Windows PC.

### Find the Cable
__Do not connect the cable to the computer yet!__

If you haven't unpacked it yet, you're looking for a ziploc bag, about 8" tall and 6" wide, cleverly marked "__KXUSB__ Interface Cable for USB".

If you've unpacked it, and you're trying to figure out which of the dozen cables in your pile-o-cables is this one:

- It is black
- It has a fat USB connector at one end
 - There's a USB icon embossed in a rectangle on one side
 - There's an empty rectangle embossed on the other side
- It has a right-angle 1/8" stereo plug at the other end

And for goodness sake, get out your label maker and put a "KXUSB - KX3 USB Cable" label on it!

__Do not connect the cable to the computer yet!__

### Software for the Computer
1. Open a web browser to http://www.elecraft.com/KX3/KX3_software.htm
1. Download "KX3 Utility (MAC OS X Version x.y.z; .zip format)".  I saved mine as "KX3_Utility_OSX_1_12_8_11.zip".
1. Open a web browser to http://www.ftdichip.com/Drivers/VCP.htm (this is where Elecraft sends you for the drivers).
    1. Scroll Down to "Currently Supported VCP Drivers"
    1. Download the driver for "x64 (64-bit)".  I saved mine as "KX3_USB_Cable_Drivers_v2_2_18.dmg".
1. Open the .dmg for the driver.  It may have multiple package-installers inside.  Run "FTDIUSBSerialDriver_10_4_10_5_10_6_10_7", and follow the prompts until the driver is installed.
1. Install the KX3 Utility:
    1. Unzip the .zip
    1. Drag the whole "KX3_Utility_OSX_x_y_z" folder to your Applications folder.

### Connect the Cable

1. Power off the KX3.
1. Run "Elecraft KX3 utility" ("the utility", for the rest of these instructions).
2. Plug the 1/8" plug into the KX3 jack marked ACC1.
3. Plug the USB end of the cable into the computer.  It is an oversized plug, so you may have to unplug other USB plug(s) from your computer.
1. Power on the KX3.
2. In the utility:
    3. Press "Refresh Port List".
    3. You'll have a drop-down list box that probably says "Bluetooth-PDA".  Change this list box to "usbserial-xxxxx".
    4. Press "Test Communications".  It should respond with a message resembling "KX3 MCU version x.y. RS-232 speed 4800 bps."  Press the OK button to dismiss the message.
    
### Upgrade the Firmware
With the cable connected, and the KX3 powered up, and the utility running:

1. Select the Firmware tab
2. Press "Check Versions Now".  It will add a message to the activity log resembling "hh:mm:ss KX3 MCU version x.y. RS-232 speed 4800 bps."
3. Press "Copy New Files From Elecraft".
4. If you get a message resembling "New firmware is available for your KX3.":
    5. Press "Close" to dismiss the message
    1. Press "Send All Firmware to KX3"
    1. The KX3 clicks, the LCD goes dark, and displays "MCU LD".  You may see some LED blinks.
    1. About 1:15 later, the LCD lights back up, and it says "dSP LOAd".  It is not done yet!
    1. About 4 minutes after it started, you'll hear the KX3 click and the computer display will return you to the Firmware tab.  The last message in the Activity Log should resemble "hh:mm:ss Ready".
    1. Quit the utility
    1. Unplug the cable from the computer.
    1. Celebrate your success!
