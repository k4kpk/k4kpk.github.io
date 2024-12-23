---
categories: []
layout: post
title: Notes on APRS, KISS, and Setting Up a TNC-X iGate and Digipeater
created: 1368706572
redirect_from: /content/notes-aprs-kiss-and-setting-tnc-x-igate-and-digipeater
---
Suppose you've connected your HT to a KISS TNC and your TNC is connected to your computer, and everything is powered on.  How do you tell whether it is working?  Or, put another way, how do you debug it, from the bottom up?

I'm going to assume that you have a source of APRS radio packets.  In other words, I assume that there is someone near you who is sending APRS traffic frequently or that you have a second radio which is sending APRS traffic.  In my case, I have a cheap HT connected to my TNC and I have another HT which is capable of sending APRS beacons, so my APRS HT is my source of traffic.  Unless I state otherwise, "HT" in the material below will refer to the HT that is connected to the TNC.

* Is your HT receiving traffic?
    * Check to see that your HT indicates that it is receiving traffic every now and then.  This is typically indicated by a Receive LED on the HT, or you can temporarily unplug the audio connection to your TNC and see whether you hear modem-screech every now and then.  If it isn't happening, check to be sure that there really is APRS traffic to be heard, check that you are on the right frequency, check your squelch, and check that your volume is set to mid-level.
* Is your TNC receiving traffic?
    * Check to see that your HT indicates that it is receiving traffic every now and then.  This is typically indicated by a Receive LED on the TNC.  If it isn't happening, check the cable from your HT and try different volume levels on your HT
* Is your computer receiving traffic?
    * Start up a terminal program.  (If your TNC is connected to your USB port, then you must load a driver that makes your USB port act like a serial port.  TNCs *must* appear to the computer as a serial port device, even if it is a virtual serial port.)  Every time the HT receives, you should see a string of characters/symbols on your terminal screen.  If not, fiddle with the volume on your HT and try and improve your radio signal (by fiddling with your antenna).
    * Using a terminal program (or similar program) that can capture data from your serial port, capture the data to a file.  Then dump the file in hex.  Proceed to the next section of this guide.

Making Sense of Received Data
-------------------------------------
* The computer and TNC exchanged data frames using "asynchronous packet protocol"
    * Frames begin and end with a FEND/Frame End/0xC0 byte
    * 8 data bits, one stop bit, no parity
    * All bytes are data except:
        * `0xC0` marks start and end of a frame
        * `0xDB 0xDC` = data byte `0xC0`
        * `0xDB 0xDD` = data byte `0xDB`
    * Details of the special bytes:
        * Frames begin and end with a FEND/Frame End/`0xC0` byte
        * FESC/Frame Escape/`0xDB` - escapes FEND and FESC bytes within a frame
            * But the FEND or FESC after a FESC isn't the normal version.  They are TFEND/Transposed FEND/`0xDC` and TFESC/Transposed FESC/`0xDD`
        * So FEND *only* appears at the beginning and end of a frame.  When you need a FEND in your data, you send FESC followed by a TFEND.
        * So FESC *only* serves as an escape character.  When you need a FESC in your data, you send FESC followed by TFESC.
    * This is similar to TCI/IP's SLIP (Serial Line Interface Protocol), but not identical.
* Within data frames (which have been un-escaped -- i.e. escaped data has been converted to pure data and FENDs have been removed):
    * First byte = Type Byte
        * Two nibbles processed separately
            * Low-order nibble = Command
            * High-order nibble = Port Number
        * `0x00` = "Send the rest of this frame over the radio as-is"

So the next thing to do is to take a look at the hex dump of your received data.  Find each hex C0.  If you find two C0 bytes back-to-back, you received more than one frame.  For purposes of this discussion, I'll assume that you either received only a single frame, or that you ignore everything after the first frame.

* First sanity check on your data -- Do you have a C0, followed by some bytes that aren't C0, followed by a C0?
    * Yes?  Good!  It looks like your TNC is speaking KISS.
    * No?  Maybe your TNC can speak multiple protocols.  RTFM and find out how to put it into KISS mode.  If it only speaks KISS, then you should look at what baud rate, parity bits, stop bits it is set to use.  "1200 baud, 8 data bits, 1 stop bit, no parity bits, no flow-control" is common.  Try setting both your TNC and your serial port to these settings.
* If you are past the C0 sanity check, de-KISS your data and proceed to the next section.
    * "De-KISS" means to remove the C0 bytes, and to decode any FESC secquences, so that your captured data reflects only pure data.

This is a sample frame I received:
`C00088888CA868AE60966896A09640EEAE92888A624062AE92888A64406303F060702F686C211E5B2F6022366F7D5F230DC0`

and this is the same frame, de-KISSed:
`0088888CA868AE60966896A09640EEAE92888A624062AE92888A64406303F060702F686C211E5B2F6022366F7D5F230D`

Checking the De-KISSed Data
-----------------------------------

I haven't figured out 100% of the data yet, but here's a start.

* Starting with the first byte of data, look at whether the byte is an even or odd number.  Find the first odd byte.  It should be somewhere after the 8th byte.
* Take each byte, starting with the first byte, proceeding through the first *odd* byte, and divide the value by two.  (You're shifting all of its bits on position to the right.)
    * Here is my sample frame, truncated at the first odd byte: `0088888CA868AE60966896A09640EEAE92888A624062AE92888A644063`
    * Here is my sample frame, with each byte divided by two: `00444446543457304B344b504b20775749444531203157494445322031`
    * This sequence is your address field.
* Convert the divided-by-two bytes from hex to ASCII (using an ASCII chart).  I'll show the divided-by-two bytes on one row, and the translated to ASCII on the next row:
    * `00444446543457304B344b504b20775749444531203157494445322031`
    * ` _ D D F T 4 9 0 K 4 K P K _ w W I D E 1 _ 1 W I D E 2 _ 1`
    * My source address was K4KPK-7 and my destination address was WIDE1-1,WIDE2-1.  
    * The space after K4KPK, WIDE1, and WIDE2 is padding the call sign to the maximum 6 bytes.
    * The hex 77 after K4KPK [space] has two nibbles.  The first nibble is my SSID, and my SSID was indeed 7.

This is as far as I've gotten in understanding the AX.25 protocol, but it is good enough to convince me that I'm getting valid data from the HT into the TNC and from the TNC into the PC.

-----

At this point, I started trying APRS iGate software.  Here's a brief summary:
* aprx
** Installed it on Ubuntu.  Since I run 64-bit ubuntu and aprx .deb is 32-bit, I had to install the 32-bit libraries.
** It installed and configured pretty easily as an RF-to-iGate gateway.
** Not all of my packets that are received by aprx are getting sent to APRS-IS.
** Some of my beacons ARE getting sent, but not of them show up on the map.
** It logs received frames nicely, but it is not logging what it sends to APRS-IS.
** To DISABLE it: sudo update-rc.d -f aprx remove
** To ENABLE it: sudo update-rc.d aprx defaults 84
