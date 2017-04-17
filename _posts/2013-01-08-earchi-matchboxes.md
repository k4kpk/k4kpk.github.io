---
categories: []
layout: post
title: EARCHI Matchboxes
created: 1357702126
redirect_from: /content/earchi-matchboxes
---
EARCHI Matchboxes
================
I really like an EFHW for low power operation.  Minimal counterpoise/radial requirements make for a convenient antenna for portable use, and I operate portably about 99%. Someday, when I get around to setting up an antenna at home, an end-fed antenna is probably what I'll use because my lot makes radials a challenge.

You can build these transformers from parts if you're handy that way.  They aren't terribly expensive, so I buy mine from EARCHI.  They ship promptly and the completed product is neater that I'd cobble together.


20m EFHW
========
The 20m EARCHI matchbox is an L-C matching network designed to reduce the high impedance of a 33-34.5 foot wire (about a half wave on 20 meters) to 50 ohms.  An EFHW antenna puts the feed point where your standing wave gives you high voltage, low current.  A center feed puts your feed point where your standing wave gives you low voltage, high current.  Your radio is designed for low voltage, high current.

If the impedance of an EHFW is about 4000 ohms, then this must be about an 80:1 UNUN.

This can work without an antenna tuner.

40m EFHW
========
I don't use this one because I use a mostly vertical antenna, and I don't have a 66' fiberglass mast!

The 40m EARCHI matchbox is an L-C matching network designed to reduce the high impedance of a 66-67.5 foot wire (about a half wave on 40 meters) to 50 ohms.  An EFHW antenna puts the feed point where your standing wave gives you high voltage, low current.  A center feed puts your feed point where your standing wave gives you low voltage, high current.  Your radio is designed for low voltage, high current.

If the impedance of an EHFW is about 4000 ohms, then this must be about an 80:1 UNUN.

This can work without an antenna tuner (and yes, I did use cut and paste)!

6-40 Matchbox
=============
The 6-40 EARCHI matchbox is a 9:1 UNUN, which can handle 100 watts.  Obviously, with a range from 6 to 40 meters, your wire won't be a half wave, but it will still be end fend.  That means you'll still have relatively high voltage and low current.  Since your radio is designed for low voltage, high current, an UNUN is still needed.

You have to use a tuner with this transformer because it can't possibly match the impedance on each band.  This isn't a problem for me because my KX3 has a built-in ATU.  Some people might have a problem with signal loss over a long feed line, with an antenna with a poor untuned SWR.  Since I operate portably, my feed line is typically very short.

However, EARCHI recommends a minimum of 16' of coax.  (The shield is where your counterpoise comes from.)  Since good coax can be heavy, I'm going to try using a short coax with 16' or more of counterpoise, clamped to the shield connector of the coax, at the matchbox.

But...
====
Big difference -- The 20 and 40 meter matchboxes should be used with a half-wave wire.  (Honestly, I can't figure out why you need both a 20 and a 40 -- aren't they both about an 80:1 UNUN?)  But the 6-40 box cannot possibly be used on all those bands with a single wire and that wire be a half-wave *everywhere*.

When you use a half-wave, your feed point has very low current.  This means you can get away with very little counterpoise -- maybe just the metal case of your radio.  When you do NOT use a half-wave, you're going to have more current at the feed point, and you will need more counterpoise.

The EARCHI 6-40 box's instructions say to use at least 16' of coax as feed line.  That shield wil become your counterpoise.  If you don't use a counterpoise with an end-fed non-half wave, you're going to get RF in the shack (even if the shack is just your radio in your lap in the field).  Somebody smarter than me said that when you use your coax and/or rig's case as a counterpoise, you have an unpredictable counterpoise, and I'd rather use an explicit counterpoise with predictable behavior.  I think it might be more accurate to say that the further your feed point current diverges from zero (i.e. the further away from a half-wave your antenna), the more important a predictable counterpoise becomes.

I think (and I could be wrong) that the 6-40 matchbox adds value for users whose built-in ATU cannot handle the higher-than-usual impedance of an end-fed non-half wave antenna.  I think that means you should still choose a non-resonant length on all your bands with one of these boxes, just like you would do if you were feeding your radio's ATU directly.

If/when I use the 6-40 matchbox, I'll use a non-resonant antenna length, and I'll use a single similar length ground-level counterpoise, AND... I'll try it without the matchbox first.   i.e. The matchbox will be just an "in case it won't tune without" accessory.

I need to test this in the local park before I use it on a SOTA summit.
