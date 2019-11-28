---
title: "3D printing experiments (cryptography)"
date: 2019-10-22T10:31:30+02:00
tags: ["experiment", "fashion", "textiles", "3d printing", "cryptography"]
categories: ["textilelab"]
layout: post
---

# 3D Printing experiments on fabric
For these experiments I am hiding messages in the 3d prints. 

## Steganography

## Visual cryptography

### Python script
I am using a python script by LessonStudio (<https://github.com/LessonStudio/VisualCryptography>) to create two separate images that form the original image when placed on top of each other.

>This file takes one argument which is a file that you would like to split into two encrypted images. The original image can only be viewed by overlaying the two encrypted images. If printed on clear plastic, It can be very finicky to align the two images if the pixel count is too high. For best results keep the original image below 200x200 pixels and print as large as possible onto clear plastic to obtain the best results.

>You can go to higher resolutions but you then really have to be precise when aligning the two images.

>The resulting images will be twice as wide and twice as tall pixelwise and there is only 1 bit colour.

>Future features should include alignment marks to make aligning the two transparancies easier.

>Maybe I will increase the efficiency of the conversion except that I find that I spend more prep time in photoshop by many orders of magnitude than any time savings that could be extracted.

>The reason I built this is that I found many tools out there for doing this that didn't work for a variety of reasons including being built for long dead versions of Python.

>USAGE: python visual_cryptography.py file_to_encrypt.png

Notes: 
- This uses an older version of Python (Python 2 instead of Python 3, the current version), so it did not work at first. You need to install Python 2, and use ```py -2``` instead of ```python``` to initialize the script.

---------------

First I used the Fusion360 plugin Image2Surface to generate a 3D surface out of the black and white images generated with de Python script. That did not really work as I hoped, it doesn't really translate the black and white as well as I need. In the images below you can also see the mess it created on PrusaSlicer; the text was not legible at all. After that I tried <https://imagetostl.com/> which worked better (the series below )
![]({{ site.baseurl }}/images/textilelab/visual-cryptography-tests1.jpg)



# 2D image to 3d file
Methods:
- [3D Builder (Windows)](https://www.microsoft.com/en-us/p/3d-builder/9wzdncrfj3t6?source=lp&activetab=pivot:overviewtab): especially the stamp setting works great with black and white images
- <https://imagetostl.com/>: not that great but if you have no other software available to use, a quick and easy method (although the stl files had to be converted for me to be able to use them, not sure if that is an issue for everyone)
- [Fusion360 Plugin](https://github.com/hanskellner/Fusion360Image2Surface): Not very usable if you want to use a black and white image to create a stamp, better suited for grayscale images (think landscapes, heightmaps)
- [Cinema4D image extrusion](https://www.motiontutorials.net/blog-tutorials/cinema4d-logo-extrusion-from-photo): I have not used this method as C4D was not working on my laptop but the method seems very straightforward and easy to use.

## Links
- <https://www.instructables.com/id/How-to-3D-Print-Onto-Fabric/>
