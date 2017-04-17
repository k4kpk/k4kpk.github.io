---
categories: []
layout: post
title: Set Up DSP Radio 1.3.5 for Softrock Lite II 20 Meters
created: 1355007751
redirect_from: /content/set-dsp-radio-135-softrock-lite-ii-20-meters
---
# The Absolute Minimum -- Just Get __Some__ Output
* __Softrock Lite 20 meters "Make it go"__ (after copying to /Applications).  Note: I've been told this is the wrong way to set it up.  Acknowledged.  This is just my record of how I got it to work the first time.
    * In Audio Devices (Window=>Show/Hide Audio Devices):
        * Set the 'Input' checkbox for the 'Built-in Input' device.
        * Set the 'Output' checkbox for the 'Built-in Output' device.
        * Close the Audio Devices window.
    * In Configuration (Window=>Show/Hide Configuration):
        * Set FA SY-1 frequency to 14.0475
            * Note: The default value for Oscilator nominal frequency is 114.2335
        * Press 'Add Configuration'.
            * Set Input Gain and Output Gain to 20.
                * Note: Once, I found it worked better with Input Gain = 70, and Output Gain = 20.
            * Name this Configuration SR-Lite-1
        * Set the Active checkbox for SR-Lite-1
            * Note: Whenever you edit a Configuration, clear all 'Active' checkboxes first!
        * Close the Configuration window.
    * Connect an audio signal source to the Mac's audio input jack. (I ran a stereo 1/8" patch cord from my iPhone's earphone jack to my Mac.)
    * Play audio on your audio source.  (I used a piano application on my iPhone.) 
        * Confirm that you hear your audio on your Mac's speakers, and you see the spectrum change in DSP Radio.  If you don't hear audio:
            * Plug earphones into your audio device, and make sure it is really generating audio.  (This was a problem in one of my tests.)
    * Replaced the audio device with the input from your Softrock Lite.
        * You should see radio signals.  If not:
            * Your antenna might be borked.  If you have another 20m radio, see if there are any signals on *it*, when using the same antenna.
            * Try enabling AGC (Automatic Gain Control) on the Configuration window.  (Remember to make the configuration row NOT active while editing!)
            * CW seems to work best.  Set the Mode listbox in the left pane to "CW".
    * One surprise from this exercise -- When set up this way, the values under the "Rx Frequency" appear to have no impact on the frequency that is tuned.  When I press Command and scroll, those frequencies change, but the tuned signal does not.  (In fact, they are displaying about 3 kHz, and I'm receiving around 14 MHz.)  Dragging the green bar is the only way I can get it to tune.


* __Updated "Make it go" based on instructions by Jas Strong__ (She has a video at http://www.youtube.com/watch?v=yEfToeTW8rU ).  These work for the Ensemble RX II, which tunes from broadcast AM radio to about 30 Mhz.
    * Window=>Launch Audio MIDI Setup, and choose Window=>Show Audio Window.
        * Define a "Softrock" aggregate device in the left most pane, by clicking on the "+".  Double-click on it, to rename it to "Softrock".
        * In the physical device list (right pane), select Built-in Output, and Built-in Input, and if you have a USB Sound card, also select it.
        * Do not close the Audio Devices window.  Move it out of the way.
    * Window=>Show Audio Devices
        * Press Update Audio Device List, and resize the window so you can see all your devices.
        * Select the Softrock device for Input and Output.
    * Window=>Show Configuration
        * Press Add Configuration.  Do NOT select the Active checkbox for New Configuration!
        * Find your Audio Devices (Audio MIDI Setup) window. Locate the "In" and the "Out" column in this window.  
            * Where you see a zero, you don't have a device.  Where you see a 2, you have two devices.  
            * The devices are numbered from the top, starting with zero.  The input devices are counted separately from the output devices.
                * i.e. You'll have input devices zero and one, and output devices zero and one, and if you have more than one input/output, you'll have higher numbers too.
        * In the Configuration window, set Input I and Input Q to the input devices you want to use.  If you set them both to zero and one, you'll use the first input device and the first output device listed in the Audio Devices window.
        * Scroll a little to the right, and set input gain and output gain to 20
        * Now you can set the Active checkbox for your new configuration.  As soon as you do, you should start hearing hissing, if your Softrock is connected.
        * Close the Audio Devices window and the Configuration window.  
