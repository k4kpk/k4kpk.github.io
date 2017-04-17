---
categories: []
layout: post
title: Mapping Your Chasers
created: 1373588990
redirect_from: /content/mapping-your-chasers
---
I wanted to map my SOTA chasers, to see where my signal reaches.  Google provides a way to do this.  If you don't have a Google account, you'll have to get one in order to do this.  Note that this did not work on my Google Apps for Domains account.  I had to use a blah-blah-blah@gmail account.  This description uses the "New Look" for Fusion Tables (as of July 2013).

Be aware that depending on exactly how you format your data and what you name your columns, Google might do some of the following for you.

* Create a spreadsheet with a row for each chaser, and a column for latitude and a column for longitude.  Your lat/lon values must be decimal degrees and not degrees/minutes/seconds.  Make your first row be column labels. I named mine "His_Latitude" and "His_Longitude" (because my source table also has "My_Latitude" and "My_Longitude").
* Save your spreadsheet as a .CSV file.
* Navigate to http://docs.google.com.
* If you have never used "Fusion Tables" before:
    * Click the Create button.
    * Click on "Connect more apps."
    * When it displays a list of apps, enter "Fusion" in the search field and press Enter.
    * Locate Fusion Tables (experimental) and click its "Connect" button.
    * When it asks, make Google Tables the default app for files of this type.
* Click the Create button.  If you don't see Fusion Table as an option, refresh the web page and try again.
* Click Fusion Table:
    * Choose From This Computer
    * Browse to, and upload your .CSV file
    * When it asks, tell it that your first row is column names, and press Next
    * When it asks, give it a good name for your table. (I cleverly called mine "Chasers".)  Press Finish.
* Select Edit, then Change Columns:
    * Select the Latitude column, change the Type value from Number to Location, and select Two Column Location.
    * Underneath Two Column Location, set the value for the Longitude drop-down to your longitude column name.
    * Press Save.
* On the line with the File/Edit/Tools menu, you'll see a red plus sign on the right side.  Click the "+", and chose "Add Map".

Done.  [Click here to see my result.](https://www.google.com/fusiontables/DataSource?docid=1PLtAWg7QiN-zvECXXnOuMzKoM9snsMD7kupSit0#map:id=3)
