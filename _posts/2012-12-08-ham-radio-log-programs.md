---
categories: []
layout: post
title: Ham Radio Log Programs
created: 1355006910
redirect_from: /content/ham-radio-log-programs
---
Here are some notes on ham radio logging and rig control software.  These are not real reviews, in that I didn't look at all the features for most programs.  If I found a fatal flaw which would prevent *me* from using a program *at this point in my ham-life*, I looked no further.

I have to have:

* IOTA (directly, or via custom fields).
* SOTA (directly, or via custom fields).  Must distinguish between summit I activated and summit I chased.  Must accurately record S2S activation+chase.
* Accepts as little as a call-sign and a date+time (i.e. does not demand other fields in order to create a record)
* Captures operating location (could be combined with SOTA/IOTA)
* Upload to LoTW.
* Upload to SOTA.
* CSV import/export


Ham Radio Deluxe v5
----------------
* Windows program.
* This has lots of pieces, but right now I'm looking only at the logbook.
* Does not support SOTA.
* Does support custom fields.  You can customize the captions for the custom fields.
* I like the automatic lookup of related info that it does.
* Data store is a Microsoft Access database.  Can be tweaked to use any ODBC database.
    * See http://wiki.ham-radio-deluxe.com/index.php?title=Setting_up_Logbook_Databases
* Supports eQSL and LOTW
* This one is interesting.


dxLab
-------
* PC program
* 4.8 rating on eHam.net
* 8 user-defined items with captions.  Config for these is split across multiple screens, but I was able to configure them as desired.
* It uses a funky downloader/installer/wrapper.  I have concerns about not being able to store the setup program locally, in case they disappear.  Manual download/install instructions, which address this issue, are at http://www.dxlabsuite.com/dxkeeper/download.htm .
* Data store is a Microsoft Access database.
* Supports eQSL and LOTW
* This one is interesting.


AMATEUR CONTACT LOGGER by N3FJP
------------------------------------
* See http://www.n3fjp.com/ACLog.htm
* $25
* PC program
* 4.8 rating on eHam.net
* It does have 4 "Other" fields, which could handle SOTA.   You can customize the captions for the custom fields.
* Captures Band and Frequency.  If you enter Frequency, it does NOT calculate Band.
* Fields have little editing.  e.g. If you enter "5" or "5W" in Power, it records those characters.
* No SOTA support.
* No control over exported fields.  It exports the entire records, with no column titles.  Upload to SOTA would be labor intensive.
    * Maybe I could export the whole DB, import/attach it in Access, and write Access code/tables to manage SOTA export.
    * Maybe write Perl/Python/Ruby script to convert exported records to LOTW format.
    * A free program called ASC2ADIF is reported to do this: http://kh2d.net/software/
    * Excel/ADIF converter - http://www.mydarc.de/DL1HW/
    * See also http://www.dxzone.com/catalog/Software/Log_Converters/
    * How would a non-SOTA-aware program handle tracking of whether a record was SOTA-uploaded?  I think I'd have to do that (perhaps just mentally).
* Looks like a proprietary data store.  (Maybe fixed length records with fixed length fields.)
* This one is interesting.


Logger 32
-----------
* PC program
* 7 User-defined fields, and you can set the caption for each one -- in some screens but not others.  Not all 7 can be displayed in the 'grid' view.
* I dislike it.


Win-EQF
----------
* PC program
* $60
* 4.8 on eham.net
* Looks like a MS-DOS program
* Has 2 fields whose captions can be customized.
* I dislike it.

-----
Unusable items are below this line.

-----

CommCat
-------
* Windows program.
* This has an iPad/iPhone remote control app which is really cool.
* The log book does not support SOTA and it does not support custom fields.  I could live without explicit SOTA support, but I'm going to capture summit IDs for export+upload to SOTA.
    * **This is a deal-killer for me.**


RumLog
------
* Popular Mac program.
* It *requires* entry of sent and received RST signal reports.  I don't always record these accurately.  I'd be willing to enter a bogus report like 00, but it insists on a *valid* signal report.  I don't want to make one up.
    * **This is a deal-killer for me.**


MacLoggerDX
-----------
* Mac program.
* This has lots of pieces, but right now I'm looking only at the logbook.
* $95 seems a little pricey for something I could do with an Excel spreadsheet.
* It *really* wants me to enter time including seconds.  Since I enter many QSOs after the fact, this is a bother.
* I'd like to see a date+time picker, rather than manual entry of the digits.
* The log book does not support SOTA and it does not support custom fields.  I could live without explicit SOTA support, but I'm going to capture summit IDs for export+upload to SOTA.
    * **This is a deal-killer for me.**


Aether
------
* Mac program.
* Straightforward.
* The log book does not support SOTA and it does not support custom fields.  I could live without explicit SOTA support, but I'm going to capture summit IDs for export+upload to SOTA.
    * **This is a deal-killer for me.**


Log4OM
---------
* PC program.
* The log book does not support SOTA and it does not support custom fields.  I could live without explicit SOTA support, but I'm going to capture summit IDs for export+upload to SOTA.
    * **This is a deal-killer for me.**


XMLog
--------
* PC Program
* The log book does not support SOTA and it does not support custom fields.  I could live without explicit SOTA support, but I'm going to capture summit IDs for export+upload to SOTA.
    * **This is a deal-killer for me.**
