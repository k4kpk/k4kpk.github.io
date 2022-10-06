---
categories: []
layout: post
title: How to Create a Cabrillo Log File For CQ WPX By Hand
created: 1364744935
redirect_from: /content/how-create-cabrillo-log-file-cq-wpx-hand
---
I made **one** contact in the recent CQ WPX contest.  

That wasn't a failure.  I wasn't actually interested in the contest.  I **am** interested in SOTA, and I was one contact short of the minimum number to claim points for my activation.  I needed another contact, and there was a contest going on with lots of people wanting to make contacts…

Since I held a QSO with a CQ WPX contester, I consumed some of his time during the contest.  In my ethical system, that obligates me to submit my log to the contest, in order to validate his QSO with me.  CQ WPX wants its logs in Cabrillo format, so I needed to create a single entry Cabrillo file.  

**Step 1**: Fetch the sample file from [http://www.cqwpx.com/cabrillo.htm](http://www.cqwpx.com/cabrillo.htm).  Here's what it looked like:

	START-OF-LOG: 3.0
	CALLSIGN: AA1ZZZ
	CONTEST: CQ-WPX-CW
	CATEGORY-OPERATOR: SINGLE-OP
	CATEGORY-ASSISTED: NON-ASSISTED
	CATEGORY-BAND: ALL
	CATEGORY-POWER: HIGH
	CATEGORY-MODE: CW
	CATEGORY-TRANSMITTER: ONE
	CATEGORY-OVERLAY: TB-WIRES
	CLAIMED-SCORE: 9447852
	CLUB: Yankee Clipper Contest Club
	LOCATION: WMA
	CREATED-BY: WriteLog V10.72C
	NAME: Randy Thompson
	ADDRESS: 11 Hollis Street
	ADDRESS-CITY: Uxbridge
	ADDRESS-STATE-PROVINCE: MA
	ADDRESS-POSTALCODE: 01569
	ADDRESS-COUNTRY: USA
	OPERATORS: K5ZD
	SOAPBOX: Put your comments here.
	SOAPBOX: Use multiple lines if needed.
	QSO: 7005 CW 2009-05-30 0000 AK1W 599 1 S50A 599 1
	QSO: 7006 CW 2009-05-30 0000 AK1W 599 2 EF8M 599 2
	END-OF-LOG:

Many of the new values I needed were documented on this same web page.

**Step 2**: Make the 'obvious' changes:

1. Change CALLSIGN from AA1ZZZ to my call sign.
2. Change CONTEST from CQ-WPX-CW to CQ-WPX-SSB.
3. Change CATEGORY-BAND from ALL to 20M.
    * I 'competed' only on one band.
4. Change CATEGORY-POWER from HIGH to LOW.
    * I used 12 watts.
5. Change CATEGORY-MODE from CW to SSB.
6. Delete CATEGORY-OVERLAY
    * Because I don't care about entering in their categories.
8. Delete CLUB.
    * I'm operating solo.
9. Change WMA to GA.
    * I'm in Georgia.  The value for Georgia came from [http://www.cqwpx.com/locations.htm](http://www.cqwpx.com/locations.htm).  
10. Delete CREATED-BY.
    * I did not use a program, and this line is optional.
11. Change NAME and ADDRESS/ADDRESS-xxx locations to my values.
12. Delete the OPERATORS entry.
    * Because I operated only as myself.
13. Delete SOAPBOX entries.

**Step 3**: Enter my correct score and QSO entries.

1. Change CLAIMED-SCORE to 1.
    * Contest rules state "Contacts between stations in the same country are worth 1 point regardless of band."  The go on to describe the use of the count of prefixes worked as a prefix multiplier, but since my prefixes-worked count is 1, this has no effect on my score.
1. Delete existing QSO records
1. Create one QSO record.  This is a fixed field width record!
    * Column 01-04:
        * QSO:
            * Record identifier
    * Column 05 = space
    * Column 06-10
        * 14324
            * Operating frequency in kHz.  Left pad with spaces.
    * Column 11 = space
    * Column 12-13
        *  PH
            * In the QSO record, SSB is entered as "PH" for phone.
    * Column 14 = space
    * Column 15-24
        * 2013-03-30
            * Date of QSO in yyyy-mm-dd format
    * Column 25 = space
    * Column 26-29
        * 1620
            * Time of QSO in hhmm format (UCT).
    * Column 30 = space
    * Column 31-43
        * K4KPK
            * My call sign, right-padded with spaces.
    * Column 44 = space
    * Column 45-47
        * 59
            * RST sent, right-padded with spaces.
    * Column 48 = space
    * Column 49-54
        * 001
            * Serial number SENT
    * Column 55 = space
    * Column 56-68
        * WR5O
            * His call sign, right-padded with spaces.
    * Column 69 = space
    * Column 70-72
        * 59
            * RST received, right-padded with spaces.
    * Column 73 = space
    * Column 74-79
        * 549
            * Serial number RECEIVED
    * Column 80 = space

**Step 4**: Submission of the log.

1. Upload log into [http://www.cqwpx.com/logcheck/](http://www.cqwpx.com/logcheck/) and check it for validity.
2. Use the same page to submit the log.

