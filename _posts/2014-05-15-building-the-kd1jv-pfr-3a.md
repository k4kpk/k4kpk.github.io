---
categories: []
layout: post
title: Building the KD1JV PFR-3a
created: 1400190264
redirect_from: /content/building-kd1jv-pfr-3a
---
I'm building a KD1JV PFR-3a transceiver. 

Issues I've encountered:

*   A few missing parts: 
    *   R48 (470 ohms) was missing.  
    *   #24 magnet wire was missing.
    *   #28 magnet wire - not enough supplied
*   The board has two holes marked "+PWR" above them and "BAT EXT" below them.  
    *   I thought these two holes were for external power, with the left being positive and the right implied negative.  Oops. "BAT" is positive for the internal battery pack.  "EXT" is positive for external power.  The nearby 2 GND holes are for negative.  When I hooked + to the left of BAT EXT and - to the right, nothing lit up.
*   There are errata at http://www.qrpkits.com/pfr3.html .  These errata are for the **PFR-3**.
    *   The current radio is the **PFR-3a**.  The PFR-3a instructions dated "11/16/09 updated 3/1/10" do **not** have errata.  They should be followed as-is.
*   The trimmer capacitor for the BFO goes on the *bottom* of the board.
*   SA612A = SA602A
    *   I had a little crisis of confidence when the instructions said to install two SA612A, and all I could find were one SA612A and one SA602A.  A little googling revealed that they are the same, for all intents and purposes.  Steve Weber says they are interchangeable.
*   Pretests on page 11:
    *   Voltage on pins 1 and 13.  It clearly says "Measure the voltage (to **ground**) on pins 1 and 13..."  I measured the voltage between pins 1 and 13.  You're supposed to measure the voltage between pin 1 and ground; then measure the voltage between pin 13 and ground.
