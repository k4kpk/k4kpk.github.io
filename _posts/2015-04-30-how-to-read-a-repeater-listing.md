---
categories: []
layout: post
title: How to Read a Repeater Listing
created: 1430426371
redirect_from: /content/how-read-repeater-listing
---
I do most of my operating on 20 and 40 meters.  I have an HT that I use occasionally for simplex and for APRS.  Whenever I try to use it on a repeater, I have to remember how to read a repeater listing.

Here's a sample repeater listing:

Location | Call        | Freq | Offset | PL 
----------|-----------|-------|--------|----
Ellijay     | W4HHH | 145.170 | - | 100.0
Dalton   | N4BZJ   | 147.135 | + | 141.3

* Frequency: The frequency the repeater _transmits_ on.
* Offset: The repeater _listens_ for your HT a standard offset above/below its transmit frequency.  For 2 meters, the offset is 600 kHz.  
* PL: Sometimes called CTCSS.  Your HT must transmit this sub-audible tone continuously, while you transmit, in order to open the repeater squelch.  It "unlocks" the repeater.

As a rule, if the output frequency (transmit) of the repeater is below 147 mHz, then the input frequency (listening) is 600 kilohertz lower. This is referred to as a negative offset. If the output is 147 Mhz or above, then the input is 600 kilohertz above. This is referred to as a positive offset. Most HTs handle this automatically, using the rule below.  The only time you have to mess with this directly is when someone has an oddball repeater.  Of the 255 repeaters near me, 9 of them do not follow the convention.

Announce your presence with: "This is K4xxx listening on 146.84" (using your call sign and the repeater frequency).  If I were looking for SOTA contacts I might say, "This is K4KPK on the 146.84 repeater.    I'm operating from the top of Mount Whatever.  Is there anyone who could meet me for a simplex contact?"
