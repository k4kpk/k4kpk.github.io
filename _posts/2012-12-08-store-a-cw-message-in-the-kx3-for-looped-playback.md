---
categories: []
layout: post
title: Store a CW Message in the KX3 for Looped Playback
created: 1355007114
redirect_from: /content/store-cw-message-kx3-looped-playback
---
### The Project
I want to program my KX3 to send "K4KPK TEST" in a loop, using CW.  I've previously installed and configured the KX3 utility on my computer.  (See [these instructions](http://www.kleinfelter.com/content/updateflash-kx3-firmware-mac-first-time) for help with that.)


I'm using a Mac with OS X 10.8, not a Windows PC.

### The Procedure
- Connect the cable.
- Start the utility.
- Make sure the KX3 is powered up.
- In the utility:
    - Select the Port tab, press "Test Communications", and dismiss the message box with the success message.
    - Select the Configuration tab.
    - Press "Edit CW Memories".
    - Wait several seconds, while the utility reads your current CW memories.  When it is finished, the bottom of the window will say "Ready".
    - Enter `K4KPK TEST` in M1.
    - Press "Save"
    - To back-up your configuration to your computer, press the "Save KX3 Button" on the Configuration tab.
    - Exit the utility

Except it sometimes doesn't work.  If you re-open the edit-CW-memories window, you'll see that nothing got saved, or that only some lines got saved.  To solve this, press tab an extra time.  The Mac version of the utility has a bug and you have to tab out of a field in order for it to notice that you updated it.

### Activating the Message
When you are ready to send this message from the KX3:

1. _Make sure you are tuned to the desired frequency._
2. _Make sure your power is set to the desired level._
3. _Make sure your mode is set to CW._
4. _Make sure your antenna is connected and tuned._
5. Press the __MSG__ button (on the left side of the KX3).
6. If you want to send the message once, tap the message number (1, in this case).  If you want to loop/repeat the message, hold the message number.  To stop looping, hold MSG.
