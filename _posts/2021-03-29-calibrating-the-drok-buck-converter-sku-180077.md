---
title: Calibrating the Drok Buck Converter, SKU 180077
---

How to Calibrate the Drok SKU 180077 (listed on Amazon as "9V Voltage Regulator, DROK DC Buck Converter 5V-23V 12V to 0.01-18V 5V Power Supply Step Down Transformer Module, 3A LCD Volt Stabilizer Circuit Board")

This is for the Drok buck converter (voltage reducer) with input from 5-23V and output from 0.01-18V, which drops voltage by at LEAST 1 volt (so if you need 12V out you must have at least 13V in).

It comes with an information sheet which is marked SKU: 180077.  Amazon ASIN is B07LC4LNTD.

The pidgin English calibration instructions say, "First, in the case of power off, press and hold the left button and access to power, then the display starts flashing, release the button. Next, measure the output voltage with a multimeter and press the left and right button to adjust the value until the multimeter displays close to 5V, such as .98V, 5.02V. Finally, access to power, then the calibration is complete."

This is gibberish, and is incorrect as of March 2021, even if you get past the poor English.  Here is how to REALLY calibrate the device.

1. Apply power while holding the left button.
2. Release the left button. The display will begin flickering.
3. Using a multimeter, measure the output voltage.
4. Use the left or right button on the device to adjust the voltage displayed by the converter to match the voltage measured by your meter. (You are adjusting the DISPLAY to match the ACTUAL output voltage.)
5. Power off.
6. Power on and check to confirm that the displayed voltage matches the measured voltage.

When I did this at 5.00 volts, it powered on at a measured 5.00 volts.  When I set the output voltage to about 12V, the display read 12.0V and the measured output was 12.1V.  You need to calibrate it at or near the voltage where you intend to use it. If you calibrate it at one voltage and use it at a distant voltage, the calibration gets dodgy.
