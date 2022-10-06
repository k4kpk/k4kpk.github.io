---
categories: []
layout: post
title: EFHW Matcher and Antenna Notes
created: 1427055013
redirect_from: /content/efhw-matcher-and-antenna-notes
---
I want to build my own EFHW matcher.  Here's where I collect my various learnings/copyings.

* There are two flavors of matchers -- one is tuned for a particular frequency and one is multi-band.  I can't tell whether either is lower loss:
    * Using a tuned tank circuit for the secondary - single band.
        * EARCHI 20 and EARCHI 40 (not the EARCHI 6-40) are examples.
        * See also [AA5TB](http://www.aa5tb.com/efha.html)
        * This design can be tuned to good SWR for a specific CW band and would work well with an MTR, where you wouldn't have an ATU.
    * Using a fixed capacitor across the primary - multi band
        * LNR (a.k.a. PAR) EF-10/20/40 Multi-band is a common example.
            * See the tear-down analysis at hamradio.me: [EFHW LNR Precision EF-10/20/40MKII Examination](http://www.hamradio.me/antennas/lnr-precision-ef-102040mkii-examination.html) and [EFHW LNR Precision EF-10/20/40MKII Test Data](http://www.hamradio.me/antennas/lnr-precision-ef-102040mkii-test-data.html), titled 
        * [PA3HHO's "Multi band end-fed (English)"](http://pa3hho.nl/wp/?page_id=471) has another take on the multi-band matcher.
        * This design gets SWR below 2.0, but you might need a tuner to work with the MTR.
* [W0EA](http://www.w0ea.us/2013/06/efhw-matcher-and-update.html) says, "FT37-43 cores are too small for a wideband transformer like the PAR.  They DO work for a limited bandwidth match though...  It seems the small (dinky!) toroid was making the match much higher Q, and thus much lower bandwidth."  He also says he got a good match across 20 and 40 with the PAR/LNR.  PAR has a toroid larger than FT37.  (The non-trail friendly model uses FT82-43.)  I emailed LNR about the trail-friendly, and he replied "One FT-82-43 and 33Ph [sic] cap."  Others have said that PAR uses a 150 pf capacitor.
* [VK3IL](http://vk3il.net/projects/efhw-matching-unit/) says endpoint impedance is 2K-6K ohms, depending on environment.
    * I like the design VK3IL used, with a FT140-43 toroid (wound with a layer of Teflon tape to protect the toroid and the enamel of the wire) with a 3:24 turns ratio, using 1 mm enameled wire.
    * VK3IL compares 100pf, 120pf, and 150pf capacitors.
* I'd like to use a DPDT switch, to bypass the matcher and engage a counterpoise, so that I can switch between 20m EFHW and 40m quarter-wave vertical.
* Toroid info at [http://toroids.info](http://toroids.info)
* In addition to single/multi band and insertion loss, I also need to consider Q/bandwidth.  I want my 20m EFHW to work across voice and CW.

And some wire notes:

I've been using Teflon Type E Silver Plated Copper Wire" at 24 gauge.  It has been subject to metal fatigue from bending at the soldered-to-connector joint.  (Yes, I attempted strain relief.)  I've just ordered some poly-stealth at 18 and 26 gauge, to see if it is more robust.  If the teflon has been too slippery for the strain relief, the new jacket might help.  Otherwise, the steel core may help.  If the 26 gauge doesn't work, then maybe the 18 gauge will.  Instead of using all 18 gauge, I might try a 2" stretch of 18 gauge, followed by 33 feet of 26 gauge.  I need to start logging changes to my equipment.
