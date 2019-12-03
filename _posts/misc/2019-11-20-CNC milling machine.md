---
title: "CNC Milling Machine"
date: 2019-11-20T11:10:23+02:00
tags: ["cnc", "fusion360", "vcarve pro"]
categories: ["other", "fablab"]
layout: post
---

# Working with a CNC milling machine
Since my 3D printing samples on fabric are just laying around everywhere, I want to make a box for them. I will also include a lid so they won't gather dust. This is about 2D (or 2,5D actually) milling. For a tutorial on 3D milling, [click here]({{ site.baseurl }}\textilelab\fabricademy\2019\11\19\textiles-as-scaffold.html).

## Designing a box (Fusion360)
I first started to design this box in Illustrator, but I quickly realized that this required a lot of imagining what the box would look like. I switched to Fusion360 so I could actually see in 3D what I was doing. For this I followed [this tutorial](https://www.youtube.com/watch?v=5JZKSDSyP6g) (this is part one of four). You can skip the third and fourth video if you don't need any rendering and just need to the plans for the CNC machine.

To make a CAM layout I am using the align tool recommended in [this tutorial](https://www.youtube.com/watch?v=ZYj37I88-4g). However exporting the file as a dxf gave me a lot of issues so after that I projected all parts onto separate sketches. 

Tips:
- Create variables from the beginning. I did not do that but halway through modeling I started to regret that. Then you can let the software calculate all of your distances instead of having to do it yourself.
- Think about the paths you have to mill, VCarve Pro does not allow you to select separate paths so your vectors will have to be the path you want. I had to add extra outline paths because the paths I created in Fusion would have otherwise cut off my notches.

![Process of using Fusion360 to create a model of a box]({{ site.baseurl }}/images/fablab/cnc/cncbox1.jpg)

## VCarve Pro
![]({{ site.baseurl }}/images/fablab/cnc/Capture.PNG)
![]({{ site.baseurl }}/images/fablab/cnc/Capture1.PNG)
![]({{ site.baseurl }}/images/fablab/cnc/Capture2.PNG)
![]({{ site.baseurl }}/images/fablab/cnc/Capture3.PNG)
![]({{ site.baseurl }}/images/fablab/cnc/Capture4.PNG)
![]({{ site.baseurl }}/images/fablab/cnc/Capture5.PNG)
![]({{ site.baseurl }}/images/fablab/cnc/Capture6.PNG)
![]({{ site.baseurl }}/images/fablab/cnc/Capture7.PNG)
![]({{ site.baseurl }}/images/fablab/cnc/Capture8.PNG)
![]({{ site.baseurl }}/images/fablab/cnc/Capture9.PNG)
![]({{ site.baseurl }}/images/fablab/cnc/Capture10.PNG)
![]({{ site.baseurl }}/images/fablab/cnc/Capture11.PNG)

## Shopbot
![Process of using the shopbot]({{ site.baseurl }}/images/fablab/cnc/cncbox2.jpg)

<iframe width="560" height="315" src="https://www.youtube.com/embed/uwMBgrMycyE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Final result


## Links
- <https://makezine.com/2012/04/13/cnc-panel-joinery-notebook/>

Tutorial:
- [Part 1](https://www.youtube.com/watch?v=5JZKSDSyP6g): Modeling the box, bottom, and lid. Covers rabbets, grooves and miters.
- [Part 2](https://www.youtube.com/watch?v=Y9uqHgfwfIU): Adding splines to reinforce the miters, modeling the thumb grip, and making the lid open and close using joints in Fusion.
- [Part 3](https://youtu.be/2_egn8hmkss) : Applying wood materials, selecting the best grain, and photorealistic rendering.
- [Part 4](https://youtu.be/NXVaGgvGfvM): Creating printable plans from the model.