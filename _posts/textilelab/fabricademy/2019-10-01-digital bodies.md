---
title: "Digital bodies"
date: 2019-10-01T22:47:46+02:00
tags: ["fabricademy", "assignment", "lasercutting"]
categories: ["textilelab", "fabricademy"]
layout: post
---

# Digital bodies
October 1st, 2019

Anastasia Pistofidou

This class introduces new digital tools that complement hand tools in order to design, represent, make and modify the human figure that can then be used as a canvas for creation.

## Concept

I was inspired by exaggerated shapes of the body displayed in comics. Absurdly unrealistic body types are seen as normal. This reminded me of unrealistic ideals in the fashion industry, so I decided to keep this in mind while designing my human in Blender makeHuman.

"Character designers learn how to exaggerate a cartoon character's proportions so they're unbelievable enough to have visual appeal but believable enough that audiences will actually care about them.

This exaggerated anatomy has shaped the iconic look of cartoons to the point where we can't imagine toons without noodly limbs, giant heads, ridiculously large shoulders, preposterously tiny waistlines and great big eyes.

But if these same proportions were applied to living people the results would be horrific, as the simple acts of looking, walking, lifting, standing and giving birth ravage bodies too imbalanced to function properly.

Their brains would struggle in vain to process all the information presented by their big eyes, their noodle arms and legs would make movement and muscular exertion of any kind excruciating, and don't even get me started on giant toon heads and childbirth..."
[via](https://www.neatorama.com/neatogeek/2017/04/03/How-Exaggerated-Cartoon-Proportions-Would-Lead-To-Dire-Consequences/)

[Click here for the link to the pinterest board I made as inspiration](https://nl.pinterest.com/michellemvossen/bodies/)

#### Process
##### Step 1: MakeHuman
![process picture of making a human with makeHuman]({{ site.baseurl }}/images/fabricademy/process1.png)

When moving the sliders, interesting things happen sometimes.
![glitch picture of making a human with makeHuman]({{ site.baseurl }}/images/fabricademy/process2.png)

##### Step 2: Slicer
After creating and exporting the body I first put the .stl file straight into Slicer for Autodesk, but I noticed the shape was not fully closed near the shoulder which caused some glitches. When using an .obj file this was not an issue so I continued with that. I tried some of the settings in Slicer to generate different kinds of mannequins (see below).

![process pictures of using Slicer]({{ site.baseurl }}/images/fabricademy/digitalbodies.png)

##### Step 3: PrusaSlicer
Since I had to learn how to use the 3D printer, I wanted to make a miniature 3D model of my mannequin as well. For this I used PrusaSlicer.
![process picture of using PrusaSlicer]({{ site.baseurl }}/images/fabricademy/prusa1.png)


##### Step 2.5 Fusion360
I decided I wanted to go for a bust (so I could go as detailed as I wanted it to be without needing hundreds of parts) so I first had to cut off the legs before I could go any further. For this I used Fusion360 as I want to learn using this software anyway and Meshmixer did not seem to work the way I wanted it to work (A simple plane cut would not suffice as I wanted to keep both hands, the plane cut would go through one of the hands).

##### Step 3 Slicer (again)
![process picture of using Slicer]({{ site.baseurl }}/images/fabricademy/slicer7.png)
![process picture of using Slicer]({{ site.baseurl }}/images/fabricademy/slicer8.png)
I finally went for a model using curves. With every setting I tried I would lose a few fingers or limbs, so I finally went for 37 layers on the 1st axis and 39 curve layers, as this gave me the most optimal shape and the hands would still be quite visible. Final assembly steps:
<video width="480" height="360" controls muted>
  <source src="{{ site.baseurl }}/images\fabricademy\assembly.mp4" type="video/mp4">
</video>

##### Step 4 Lasercutting
![process picture of using the lasercutter]({{ site.baseurl }}/images/fabricademy/lasercut.png)

## Notes
<a href="{{ site.baseurl }}/files/fabricademy_digital-bodies.txt" download="{{ site.baseurl }}/files/fabricademy_digital-bodies.txt">fabricademy_digital-bodies.txt</a>