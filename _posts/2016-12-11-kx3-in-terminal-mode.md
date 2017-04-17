---
categories: []
layout: post
title: KX3 in Terminal Mode
created: 1481493542
redirect_from: /content/kx3-terminal-mode
---
I started tinkering with talking to my KX3 via the ACC1 port, a KXUSB cable, and a serial terminal pr`ogram.  I was perplexed because the Elecraft KX3 Utility and the KX3 Companion program for Android could both display CW and PSK31 text decoded by the KX3, but plain old terminal programs on either my Macbook or my Android phone saw nothing from the KX3.  Everything was using 38400 baud, 1 stop bit, and no parity, so it wasn't a settings problem.

It turns out that you have to send the KX3 a command to cause it to start sending decoded text to the serial port.  "TT1;" enables decoded text output and "TT0;" disables it.  But it isn't that easy!

If you turn on your KX3 and you send "TT1;" then text will start sending.  If you send "TT0;" it will stop sending.  So far so good.

Note that there is no terminating CR after those commands.  If you're used to something like the "Hayes Command Set" for modems, this is NOT quite the same.  Here's where I got in trouble. If you send "TT1;<CR>" and then you send "TT0;<CR>" you will not like the results.  It will ignore your TT0 because it does not consume the trailing CR from the TT1.  It treats CR as an invalid command.

So if you're in the habit (from your modem days) of sending <CR><CR> before you send a command, just to be sure the command buffer is empty, you will confuse your KX3 by filling the command buffer with CR.  You might consider wrapping commands with semicolons.  e.g. Send ";TT1;" or ";TT2;".
