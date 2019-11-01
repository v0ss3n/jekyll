---
title: "Upgrading a Tevo Tarantula 3d printer"
date: 2019-10-24T11:10:23+02:00
tags: ["3d printing", "documentation"]
categories: ["other"]
layout: post
---

# Tevo Tarantula

### Issues
- The bed is not completely level and secure (moves easily)
- Homing the X-axis

## Process
The Tevo Tarantula at the fablab works, but since the bed is not very secure (prone to move easily) the end result will be of a varying quality. The first test I did worked fine until the roll of PLA got stuck, the material broke and the printer started printing in the air. The only noticeable issue was that on one side of the print the resolution was slightly lower, probably because the bed was tilted slightly towards the back. 

On friday when I tried to home (move to 0) the X-axis, it did not seem to notice the endstop and the printer did not want to print after that. The axis did not stop when reaching the endstop, for which the most probable cause is a bad endstop or a bad connection. 

On monday homing the axes separately suddenly went fine, so it does not seem to be that the endstops or cables are the problem. However when trying to level the machine after homing the three axes, the same problem as on friday occured. 

What I found on reddit (<https://www.reddit.com/r/tevotarantula/comments/6rlv2a/homing_all_the_axes/>) was to try to manually trigger the endstop before it got to the end, and after that it continued to the end and then stopped like it was supposed to. 

## First test: printing a button
As a test print, I printed a little reset button I found online (<https://www.thingiverse.com/thing:2153231/>). The settings I used were the standard PLA settings (275°C nozzle, 90°C bed). The temperature of the bed seemed to be too hot as the bottom of the print was very flat. The part that is sticking out to press the button did not look very nice either, it looked as if the nozzle was too hot too. Looking at the recommended settings on the spool of PLA, it says 205-225°C for the nozzle and 40-60°C for the bed, so for the next test something in this range should be better. Below the results of the first test.

## Second test
First I made the hole for the screw bigger, because I thought the measurement was incorrect (it turned out I just had to unscrew the screw, I really did not think that through). For this I used Fusion360's combine function to subtract one body from the other (see image). After slicing and exporting the gcode, I went to print the second button. The weird thing was that although the printer said that the settings for PLA were 215°C for the nozzle and 75°C for the bed, when preheating that would suddenly change to 275°C and 90°C respectively; even when manually lowering this again it went back to 275°C for the nozzle again when I was not looking. This might have to do with the firmware so I will look into updating that. 

The result of the second test was much better so the issue with the first print was definitely the temperature.

![process fusion360 reset button]({{ site.baseurl }}/images/fablab/fusion360-subtract-bodies.jpg)

## Upgrading axes
The biggest problem with this machine is that it is very shaky, which causes the bed to be unstable and the prints to be of lower resolution when used for a while without levelling the bed. I will work on upgrading the bed to make it more stable. For this I will use these mods:

Tarantula - MGN12 Dual Y Rails
<https://www.thingiverse.com/thing:2945233>

Tarantula - Z MGN9 Rails Mod
<https://www.thingiverse.com/thing:2947123>

Ultimate TEVO TARANTULA upgrade.
<https://www.thingiverse.com/thing:2761136>

For the Y axis I need the 3d printed parts from the first link as well as 
4x 2040 100mm Aluminum Extrusion and and 2x MGN12 Linear Rail with MGH12H block:

![](https://images-na.ssl-images-amazon.com/images/I/51oMsFZda3L._SL1000_.jpg)
![](https://www.makeralot.com/bmz_cache/8/815cc411644217373de307139d00dd3f.image.430x430.jpg)

For the Z axis upgrade I need 2x 350mm MGN9 Rail with MGN9H block:
![](https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fi.ebayimg.com%2F00%2Fs%2FMTAwMFgxMDAw%2Fz%2FX~YAAOSwzaJX2O8j%2F%24_12.JPG%3Fset_id%3D880000500F&f=1&nofb=1)

Finally for the X axis I need MGN9 Rails with MGN9H block as well but 300mm long (could be longer but there is no point as the parts on the rails are too wide and 300mm is long enough and cheaper). Some t-nuts with m3 thread are needed to mount all of the rails. For now I first have to wait for the rails to be ordered but I can start with 3d printing the parts.

## Updating firmware
As the bed apparently already moved around too much and I cannot level the bed without encountering the endstop issue again, I will first update the firmware.

I used this tutorial: <https://www.youtube.com/watch?v=-sQ8p00pG5E> and downloaded the firmware from <https://github.com/JimBrown/MarlinTarantula>.

However this had no influence on the bed leveling function working again and after testing the X-axis endstop with a multimeter we determined it was not soldered properly and had to be resoldered.

## Bed leveling
After this we could level the bed (using this tutorial <https://www.youtube.com/watch?v=RZRY6kunAvs>) with a piece of paper and manually moving the screws keeping the bed in place. Apparently I moved the bed too close to the extruder because there seemed to be no space for the filament and the layer printed was very thin.

- preheat the bed to 60 degrees celsius (for PLA) because the bed expands with heat
- counterclockwise: lowers the bed
- clockwise: heightens the bed 

## Y-axis
Using the Tarantula - MGN12 Dual Y Rails mod, the amount of each part needed:

- 4x bracket
- 4x end cover
- 2x? support guide bracket
- 2x carriage
- 2x hook-on belt bracket

Recommended print settings:

- 0.2 Layer Height
- at least 1.6mm Shell to increase overall strength of your machine
- at least 40% infill
- no raft

## Continuing after a failed print
Since I had to leave before my print was finished, I unplugged the machine hoping it would continue the next day where it left of, just like the Prusa i3 does. Unfortunately that did not work, so I tried to figure out a way to continue the print manually. I found multiple tutorials and I decided to combine the following comment with the second method from [this website](https://community.ultimaker.com/topic/6219-2-ways-to-resume-print-from-last-layer/). 

>What I do is measure the height of the print using digital calipers. Open your slicing software and offset the Z on the print that amount. The idea is that the bottom of the print is below the bed surface and the resume point is where your print starts. Be sure to disable your start up script (bed level, purge nozzle, etc), skirts, and rafts. I also start the first couple of layers a little hotter too. This will help it bond better to the cold print. If your bed isn't to far out of level and your measurement is good, it'll work. Good luck. [via](https://www.thingiverse.com/groups/tevo-tarantula-owners/forums/general/topic:30667)

<https://www.youtube.com/watch?time_continue=9&v=PVtLCwXjEXE>

![]({{ site.baseurl }}/images/fablab/gcode.png)

The offset I measured was 13.18mm and using [GCode viewer](http://gcode.ws/) I found the closest layer (13.20mm) then I deleted all of the already printed layers in the gcode. I also added a line in the setup hoping it would let the extruder approach the model from the correct height (at least, I hoped it would do that. I added "G1 Z15.0 F13200 ;"). According to the tutorials it should have been there already but since I use PrusaSlicer my gcode is a bit different. 


When I finally thought the file should be OK I started the print - and the extruder immediately bumped into my print and knocked it from the glass plate. So that did not work in the end but I will try again in the future.


##### Links

<https://help.tevo.cn/knowledge-base/my-axis-does-not-stop-when-homing-my-tevo-tarantula/>
<https://makerfun3d.com/troubleshooting-3d-printers>
<https://www.simplify3d.com/support/print-quality-troubleshooting/>
