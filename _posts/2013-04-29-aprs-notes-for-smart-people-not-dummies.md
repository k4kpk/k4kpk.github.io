---
categories: []
layout: post
title: APRS Notes for Smart People (not Dummies)
created: 1367283248
redirect_from: /content/aprs-notes-smart-people-not-dummies
---
(I couldn't call this page, "APRS Notes for Dummies," because someone else owns the "for Dummies" trademark.)

**North American APRS Frequency**

* 144.390 MHz
* 445.925 MHz (maybe, in some places)

**What SSID should I use?  (SSID is the number that follows your call sign.  e.g. K4KPK-1.)**

* Fixed home station: 0 (same as no SSID)
* Cell phone pseudo APRS: 5
* HT: 7
* Mobile in a car: 9

**What path should I use?**
I use my HT for SOTA. I use my cell phone in the car, generally in the city.  I don't turn on my HT until I hit the trail.  Therefore, my HT gets used where coverage is sparse and my cell gets used where coverage is dense.

* On cell phone: WIDE1-1,WIDE2-1
* On HT: WIDE1-1,WIDE2-2
* On fixed station: Find out the real node name of the nearest (always-on) node.  Use that.

**Beacon Rate**

* On cell phone (in the car - on car power): 2 minutes.
* On HT (hiking - need to save battery): 7 minutes

These are twice the actual rate I'd like to beacon because I assume that only alternate beacons will get received.

**APRS Messages**

* When you send a message, the recipient will send an ACK or a REJ.  Since your message and the ACK/REJ are both best-effort delivery (like a TCP/IP network UDP message), either one might be lost if you don't get the ACK.

**How to Test for Internet Access**

* Message to `WHO-IS`, content = `W1AW`
    * Or to `WHO-15` if you pass through a stupid iGate.
    * If you get data about W1AW, you reached the Internet.

**How Can My XYL See My Location On a Map?**

* [http://aprs.fi](http://aprs.fi) - search for your call sign

**Send Email**

* To: EMAIL
* Content: First string in message text is email address followed by a space, then your message.
* Total length (including address) = 64 characters.

**Create/Manage Email Alias**

* To: EMAIL-2
* To create a shortcut:
    *Content: `aliasName space emailAddress`
    *e.g. Content: `me k4kpk@example.com`
* To send email to the 'me' alias:
    * Content: `me This is a test.`
* Ask for a list of all my shortcuts by sending:
    * Content: `me L`
    * This will cause an email to be sent to k4kpk.com@example.com with all of my shortcuts. The L is case-insensitive.
    * ???? OK.  If I define an alias to someone@example.com, how can **I** get that alias sent to my email address?  I *think* the form is:
        * Content: `destinationAlias space command`
        * So if I've defined xyl as an alias for wife@example.com:
            * Content: `me L` sends the full list of addresses to k4kpk@example.com and Content: `xyl L` sends the list of aliases to wife@example.com.
       * I wonder what would happen with Content: `k4kpk@example.com L`
* To remove the "me" shortcut, I would send
    * Content: `me r`
