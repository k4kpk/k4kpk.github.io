---
categories: []
layout: post
title: VX-8GR Guide for Smart People (not Dummies)
created: 1366843100
redirect_from: /content/vx-8gr-guide-smart-people-not-dummies
---
(I couldn't call this page, "VX-8GR for Dummies," because someone else owns the "for Dummies" trademark.)

![VX-8GR Image](http://k4kpk.com/sites/k4kpk.com/files/vx-8gr.png)

Here are some notes for getting started and quick reference when using my new VX-8GR.  Notation is defined at the end of this page.

#Yaesu VX-8GR Set Up for APRS Beaconing

* Note: Circle with dot in upper left, on Station List indicates that beaconing is active.
* Enable GPS ++
* Set call sign, SSID, icon (One time, when new.) ++
* Enable APRS modem ++
* Enter APRS (144.390) into the **B** frequency:
    * Tap <Bv\> to select the B-band.
    * Use the digit keypad to enter 144.390
* Enable Beaconing:
    * Access APRS Settings Menu ++
    * <turn\> to 14: BEA- CON TX.
    * Tap menu
    * <turn\> to Auto
    * Tap menu
    * <turn> to 12: BEACON INTERVAL.
    * Tap menu
    * <turn\> to select interval
    * Tap <PTT\> to save

#Enable APRS Modem
* Access APRS Settings Menu ++
* Turn to `3 APRS MODEM`.
* Tap <menu\>.
* Turn to `1200bps`.
* Tap <PTT\> to save.

#Enable GPS

* Tap <menu\> until GPRS screen.
* Hold <menu\>.
* Turn to select `18 GPS Power`
* Turn to toggle On/Off
* Tap <PTT\> to save On/Off
* Note: <mode\> toggles North-up/Heading-up.  White arrow = heading-up; black arrow = north-up.
* Tap <menu\> to return to non-GPS mode.


#Set call sign, SSID, icon:
* Access APRS Settings Menu ++
* Turn to select `22 My Call Sign`.
* Tap <menu\>.
* Tap <mode\> until pointer is in 7th call sign column.
* Turn to select SSID `-7` (unless you used -7 on other HT).
* Tap <menu\>.
* Turn to `24 My Symbol`.
* Tap <menu\>.
* Turn to select running man.
* Tap <menu\>.
* Turn to `23 My Position`.
* Tap <menu\>.
* Turn to `GPS`.
* Tap <menu\>.

#How to Use the Keypad
* Multi-press the digit keys as you do on a cell phone, to cycle through the characters assigned to that digit.
* Special characters:
    * 
* <Band\> is cursor-left
* <Mode\> is cursor-right
* <Hm/Rv\> appears to be select (and it stands for Home/Reverse)
* To append an SSID to a destination address, complete entry of the base call sign and then rotate.
* Lock/unlock = tap Power.  Lock icon in bottom center shows lock status.
* V/M is the Delete key (sometimes)
* To enter "@", press 1 and rotate clockwise 15. (It is right after "?".)
    * Or press 0 six times for "?" and rotate clockwise 1.
* To enter ".", press 0 eight times or press 0 and rotate counter-clockwise 2.
* Space is 00.

#Access APRS Settings Menu
* Tap <menu\> until `Station List`.
* Hold <menu\>.

#Send APRS Message
* Tap <menu\> until `APRS MESSAGE`
* <Hm/Rv\>
* Enter call-sign-with-SSID (destination)
* <mode\>
* Enter msg up to 67 char
* Press TX/PO (the 'atom' key)
* The radio tries 5x, one per minute.  IF it gets an ACK, it puts an asterisk after the "TX" in the message display.  Otherwise, it displays the remaining attempt count, or a period if it timed out.
* To erase the current message buffer (to send a NEW message):
    * <Band\>
    * A/B to select CLEAR
    * <V/M\>

#Delete APRS Message
* Select the message
* Press <V/M\>

#Yaesu VX-8GR Cheat Sheet

* Volume - Hold_Vol + Turn_knob
* Squelch - FW, Mon, Turn_knob, FW, Mon
* MONI/T.Call = Suppress squelch
* F/W = Alt (i.e. access the *other* function of the keypad)
* Change transmit power = F/W + Atom
* Check power level = L1/L2/L3/Hi in the lower-left on the display

-----------------------------------
Notes:

* "Tap" means a brief button press.
* "Hold" means to hold the button about 1 second, until its secondary function activates.
* "Turn" means to turn the only knob on the radio.  (Since the knob is the only thing that turns, I don't say "Turn *knob*."
* "++" means to see procedure defined elsewhere on this page.
* "x+y" means "at same time"; "x,y" means "sequentially"
* There's a key in the lower left, with TX/PO as its alternate function, that looks like an atom with revolving electrons to me.  I call this the 'atom' key.
