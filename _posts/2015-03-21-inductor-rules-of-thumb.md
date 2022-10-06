---
categories: []
layout: post
title: Inductor Rules of Thumb
created: 1426975850
redirect_from: /content/inductor-rules-thumb
---
Sevick's books on inductors are widely regarded as the canonical works on inductors.  I'm looking for a more intuitive understanding and not so much math.  Here are some rules of thumb for inductors.  Not everything here is necessarily 100% accurate.  (That is the nature of a rule of thumb.)

Terms:

* Z: impedance in ohms
* F: frequency in Hertz
* L: Inductance in Henries
* k is a constant
* A = area of a turn
* N = number of turns
* C = capacitance

Formulae:

* Formal: The formula for inductance is: L = kAN^2
* Formal: For a simple choke (not at resonant frequency): Z = 2πFL
* Quasi-formal: For a choke at its resonant frequency Z, you treat it as parallel L and C.  Z = 1/(impedance_of_L - impedance_of_C)

Informal

* Increasing the diameter of turns, adds reactance.
* Adding a turn, adds reactance.
* An inductor has reactance (lots), resistance (little) and inter-turn capacitance (little).
* Because an inductor has an L and a C, it has a resonant frequency.
    * Look up the resonant frequency in the ARRL Antenna Handbook or online.  It is hard to calculate.
    * Often, you want the operating frequency to be well below the resonant frequency.
* The windings of the inductor are usually kept well apart; often several conductor diameters.
* A "W2DU balun" is just a bunch of ferrite beads (toroids) slipped over the coax feed line.  If you need to choke a wide bandwidth, you can use a mix of ferrites to cover the range.  Might need lots of beads an low frequencies.
