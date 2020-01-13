---
title: "Upgrading a Tevo Tarantula 3d printer"
date: 2019-10-24T11:10:23+02:00
tags: ["3d printing", "tevo"]
categories: ["fablab"]
layout: post
---

# Tevo Tarantula
![tevo tarantula]({{ site.baseurl }}/images/misc/tevo-tarantula.jpg)

### Issues
- The bed is not completely level and secure (moves easily)
- Homing the X-axis stopped working
- Stringing: I tried lowering the nozzle temperature from 215 to 200, but the oozing seemed to be the same
- Flexible filament cannot be used as the filament gets stuck in the filament extruder

## Process
The Tevo Tarantula at the fablab works, but since the bed is not very secure (prone to move easily) the end result will be of a varying quality. The first test I did worked fine until the roll of PLA got stuck, the material broke and the printer started printing in the air. The only noticeable issue was that on one side of the print the resolution was slightly lower, probably because the bed was tilted slightly towards the back. 

On friday when I tried to home (move to 0) the X-axis, it did not seem to notice the endstop and the printer did not want to print after that. The axis did not stop when reaching the endstop, for which the most probable cause is a bad endstop or a bad connection. 

On monday homing the axes separately suddenly went fine, so it does not seem to be that the endstops or cables are the problem. However when trying to level the machine after homing the three axes, the same problem as on friday occured. 

What I found on reddit (<https://www.reddit.com/r/tevotarantula/comments/6rlv2a/homing_all_the_axes/>) was to try to manually trigger the endstop before it got to the end, and after that it continued to the end and then stopped like it was supposed to. 

## First test: printing a button
As a test print, I printed a little reset button I found online (<https://www.thingiverse.com/thing:2153231/>). The settings I used were the standard PLA settings on the Tevo Tarantula (275°C nozzle, 90°C bed). The temperature of the bed seemed to be too hot as the bottom of the print was very flat. The part that is sticking out to press the button did not look very nice either, it looked as if the nozzle was too hot too. Looking at the recommended settings on the spool of PLA, it says 205-225°C for the nozzle and 40-60°C for the bed, so for the next test something in this range should be better. Below the results of the first test.

![reset button]({{ site.baseurl }}/images/misc/reset-button1.jpg)

## Second test
First I made the hole for the screw bigger, because I thought the measurement was incorrect (it turned out I just had to unscrew the screw, I really did not think that through). For this I used Fusion360's combine function to subtract one body from the other (see image). After slicing and exporting the gcode, I went to print the second button. The weird thing was that although the printer said that the settings for PLA were 215°C for the nozzle and 75°C for the bed, when preheating that would suddenly change to 275°C and 90°C respectively; even when manually lowering this again it went back to 275°C for the nozzle again when I was not looking. This might have to do with the firmware so I will look into updating that. 

![process fusion360 reset button]({{ site.baseurl }}/images/fablab/fusion360-subtract-bodies.jpg)

## Final button
The result of the second test was much better so the issue with the first print was definitely the temperature.

![reset button]({{ site.baseurl }}/images/misc/reset-button2.jpg)

## Updating firmware
As the bed apparently already moved around too much and I cannot level the bed without encountering the endstop issue again, I first updated the firmware.

I used this tutorial: <https://www.youtube.com/watch?v=-sQ8p00pG5E> and downloaded the firmware from <https://github.com/JimBrown/MarlinTarantula>.

## Endstop
However, updating the firmware had no influence on the bed leveling function working again and after testing the X-axis endstop with a multimeter we determined it was not soldered properly and had to be resoldered. After this, bed leveling worked.

![]({{ site.baseurl }}/images/misc/endstop.jpg)

## Bed leveling
After this we could level the bed (using this tutorial <https://www.youtube.com/watch?v=RZRY6kunAvs>) with a piece of paper and manually moving the screws keeping the bed in place.

Method:
- preheat the bed to 60 degrees celsius (for PLA) because the bed expands with heat
- counterclockwise: lowers the bed
- clockwise: raises the bed 

Apparently I moved the bed too close to the extruder because there seemed to be no space for the filament and the layer printed was very thin. I did two more tests and finally the result was OK - not great but this is one of the reasons why I will work on upgrading all of the axes. For other bed leveling I use the bed leveling procedure on the machine

![]({{ site.baseurl }}/images/misc/bed-leveling.jpg)

## Curling corners on the first layers
Possible causes:
- Too hot or too cold (bed, material, fan)
>> Plastic tends to shrink as it cools from a warm temperature to a cool temperature. The plastic is extruded at a very hot temperature, and if it does not cool quickly, it may change shape over time. Curling can be prevented by rapidly cooling each layer so that it does not have time to deform before it has solidified. 

>> Increase fan speed, lower printing temperature, increase bed temperature, add raft etc.

- Bed not level
>> Fix this by levelling the bed (use the method above or use the printer's own bed leveling procedure, I am using this last method quite often)

- Nozzle starts too far from the bed
>> You can use the Z-Axis offset to make very fine adjustments to your nozzle position. For example, if you enter -0.05mm for the Z-axis G-Code offset, the nozzle will begin printing 0.05mm closer to your build platform. 

- Bed adhesion
>> Clean the bed surface, use tape or glue spray

>>If your printer does not include a special build platform material to help with adhesion, you still have options! Thankfully, there are several types of tape that stick well to common 3D printing materials. Strips of tape can be applied to the build platform surface and easily removed or replaced if you want to print with a different material. For example, PLA tends to stick well to blue painter’s tape while ABS tends to stick better to Kapton tape (otherwise known as Polyimide film). Many users have also had great success using a temporary glue or spray on the top of their build platforms. Hair spray, glue sticks, and other sticky substances tend to work very well if everything else has failed.

- First layer printing too fast
>> If you print the first layer too fast, the plastic may not have time to bond to the build platform. For this reason, it is typically very useful to print the first layer at a slower speed so that the plastic has time to bond to the bed.

First I am trying to fix this by:
- adding a brim
- increase the fan speed (both of them were at 0% but they were both on so I am not sure if this will change anything, I changed them both to 100%, the maximum. I did hear more sound coming from them but I am not sure)
- lower the printing speed for the first layer (100% to 50%)

I think if I change more settings than this I will not know what actually made the difference, so I will first look at what the result of these changes is. I will compare the Y axis carriage parts for this as I already printed one of these without all of these changed settings. I also leveled the bed because when I started this for the first time, it did not stick to the bed at all so I don't think it's level at all.

References: 
- <https://www.simplify3d.com/support/print-quality-troubleshooting/overheating/>
- <https://www.simplify3d.com/support/print-quality-troubleshooting/not-sticking-to-the-bed/>
- <https://www.simplify3d.com/support/print-quality-troubleshooting/curling-or-rough-corners/>

## Tevo Titan Extruder
Because the current filament extruder does not work with flexible filament, I want to replace this with the Tevo Titan Extruder.

## Upgrading axes
The biggest problem with this machine is that it is very shaky, which causes the bed to be unstable and the prints to be of lower resolution when used for a while without levelling the bed. I will work on upgrading the bed to make it more stable. For this I will use these mods:

Tarantula - MGN12 Dual Y Rails
<https://www.thingiverse.com/thing:2945233>

Tarantula - Z MGN9 Rails Mod
<https://www.thingiverse.com/thing:2947123>

Ultimate TEVO TARANTULA upgrade.
<https://www.thingiverse.com/thing:2761136>

For the Y axis I need the 3d printed parts from the first link as well as 
4x 2040 100mm Aluminum Extrusion and 2x 350mm MGN12 Linear Rail with MGH12H block:

![]({{ site.baseurl }}/images/misc/tevo-parts.jpg)

For the Z axis upgrade I need 2x 350mm MGN9 Rail with MGN9H block:
![]({{ site.baseurl }}/images/misc/tevo-parts2.jpg)

Finally for the X axis I need 1x MGN9 Rails with MGN9H block as well but 300mm long (could be longer but there is no point as the parts on the rails are too wide and 300mm is long enough and cheaper). Some t-nuts with m3 thread are needed to mount all of the rails. For now I  have to wait for the rails to be ordered but I can start with 3d printing the parts.

So:
- 2x 350mm MGN9 Rail with MGN9H block
- 4x 100mm 2040 Aluminum Extrusion 
- 2x 350mm MGN12 Linear Rail with MGH12H block
- 1x 300mm MGN9 Rails with MGN9H block 

- M5 bolts and nuts

Still needed
- M3 8mm bolts (https://www.toprc.nl/team-corally-staal-schroeven-cilinderkop-binnenzeskant-c-30001.html) 
- M3 T-slot hammer head nuts (6mm) (https://www.aluxprofiel.nl/indraaimoer-t-sleuf-6-m3/a3534?c=3489)
- M3 20mm bolts


## Bolts and nuts
Y axis upgrade:

- 8x M3 18mm/20mm bolts to attach the MGN12H blocks to the bed support
- 8-10x M3 14mm bolts and M3 nuts to attach bed carriage to bed
- 32x M5 10mm bolts and M5 T-slot hammer head nuts (size 6) to attach end covers and support guide brackets to extrusions
- 4x M3 8mm bolts and M3 T-slot hammer head nuts (6mm) to attach rails to extrusions

X axis upgrade:

- 4x (at least) M3 8mm bolts and M3 T-slot hammer head nuts (6mm) to attach rails to extrusion

Z axis upgrade:

- 8x (at least) M3 8mm bolts and M3 T-slot hammer head nuts (6mm) to attach rails to extrusion



## Recommended print settings

- 0.2 Layer Height
- at least 1.6mm Shell to increase overall strength of your machine
- at least 40% infill
- no raft

### Y-axis
Using the Tarantula - MGN12 Dual Y Rails mod, the amount of each part needed:

- 4x bracket
- 4x end cover
- 2x support guide bracket
- 2x carriage
- 2x hook-on belt bracket or 1x screw-on belt bracket

Furthermore, 4x 2040 100mm Aluminum Extrusion and 2x 350mm MGN12 Linear Rail with MGH12H block are needed as mentioned above, and a bunch of M3 and M5 bolts and nuts. I did not use these as my acrylic bed has loops for the belt. The hook-on type does not fit, the screw-on would be possible. See picture of the bed below.

![tevo tarantula]({{ site.baseurl }}/images/fablab/tevo-y1.jpg)

#### Step 1: attach carriage to bed
Drill holes into the acrylic bed to attach the carriages. My bed has a different shape so I could only drill 4 holes; it also did not fit 100% so I had to be very precise with the alignment. I used M3 bolts (8x; ideally 10x) and nuts.

![tevo tarantula]({{ site.baseurl }}/images/fablab/tevo-y2.jpg)

#### Step 2: add end covers to 2040 extrusion
Screw M5 bolts with T-slot hammer head nuts into the end covers; leave some space so it's easier to slide the 2040 extrusion in place. 

![tevo tarantula]({{ site.baseurl }}/images/fablab/tevo-y3.jpg)

#### Step 3: prepare brackets
First I used a drill (5mm) to make the holes slightly bigger as it was a very tight fit. What I first did was screwing 2x M5 bolts with T-slot hammer head nuts into one side of each of the brackets. On the other side of each bracket I used T-slot M5 bolts. I did this because I did not want to remove the the motor and belt mount on the 2040 Y-axis extrusion; this way I could leave them there and attach the bracket by twisting the nut on the inside. However, that made it very hard to actually secure it and I also had to attach some other parts so I unscrewed the parts on the front and back anyway. Conclusion: don't be lazy, use 4x M5 bolts with T-slot hammer head nuts per bracket.

![tevo tarantula]({{ site.baseurl }}/images/fablab/tevo-y4.jpg)


Other possible helpful tools:
- <https://www.thingiverse.com/thing:2566111>


### X-axis and Z-axis
Using the Tarantula - Z MGN9 Rails mod, the amount of each part needed according to the description:

- 1x X rails belt tensioner 1/2
- 1x X rails belt tensioner 2/2
- 1x X rails belt tensioner knob slide spacers
- 1x X rails motor mount
- 1x Z rails left motor mount
- 1x Z rails right motor mount
- 1x? extended lead screw gantry (not sure what this is or where this should go)

However some of the parts in the Tevo can be reused: we already have a right motor mount for the Z-axis, so I don't have to print that. I replaced the left motor mount with [this](https://www.thingiverse.com/thing:3522306) part, as it is the mirrored and edited version of the one we have for the right motor. This way the Z-axis is symmetrical.

##### Links
- <https://help.tevo.cn/knowledge-base/my-axis-does-not-stop-when-homing-my-tevo-tarantula/>
- <https://makerfun3d.com/troubleshooting-3d-printers>
- <https://www.simplify3d.com/support/print-quality-troubleshooting/>
