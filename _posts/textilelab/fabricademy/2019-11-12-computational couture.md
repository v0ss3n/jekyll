---
title: "Computational couture"
date: 2019-11-12T14:53:46+02:00
tags: ["fabricademy", "assignment"]
categories: ["textilelab", "fabricademy"]
layout: post
---

# Computational Couture
November 12th, 2019

Aldo Sollazzo

In this lecture participants will explore computational design methods towards a new reinterpretation of cloths, garments and accessories for fashion design, inspired by a new digital design methodology.

## Rhino 6
If you've never worked with Rhino before (like me) and you dive straight into Grasshopper it's a bit much, so familiarize yourself with the Rhino interface first. Rhino is a command-driven program; the toolbars contain the graphical icons for the commands. [The documentation of Rhino is a great place to start](https://docs.mcneel.com/rhino/6/usersguide/en-us/index.htm).

>NURBS (non-uniform rational B‑splines) are mathematical representations that can accurately model any shape from a simple 2‑D line, circle, arc, or box to the most complex 3‑D free‑form organic surface or solid. Because of their flexibility and accuracy, NURBS models can be used in any process from illustration and animation to manufacturing.

>NURBS geometry is an industry standard for designers who work in 3‑D where forms are free and flowing; where both form and function is important. Rhino is used in marine, aerospace, and automobile interior and exterior design. Makers of household and office appliances, furniture, medical and sports equipment, footwear, and jewelry use Rhino to create free-form shapes.

>NURBS modeling is also widely used by professional animators and graphic artists. The advantage of using NURBS over using polygon modelers is that NURBS surfaces have no facets. The models can be rendered at any resolution. A mesh can be created from the model at any resolution.

[Objects](https://docs.mcneel.com/rhino/6/usersguide/en-us/index.htm#html/ch-02_rhinoobjects.htm%3FTocPath%3D_____2)
Notes
- Rhino records every command you use in the command history window
- Press enter or space and click in the viewport to repeat a command
- Alt + drag to duplicate selection
- Right click + drag to pan
- Use the bottom checkboxes to easily snap to points on model and grid (especially in combination with grid snap/ortho/planar/osnap)
- Properties command tells you more about the state of the object

## Grasshopper
First: why use grasshopper? What makes parametric design so useful?

<iframe width="560" height="315" src="https://www.youtube.com/embed/RMF9gSSTOts" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

This is a good tutorial to start with: 

<iframe width="560" height="315" src="https://www.youtube.com/embed/Y66bSN4QFUE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Download all of the plugin linked to in this video (in the description). If you don't see them in the grasshopper tab menu, they probably have to be unblocked; to do this for all files at once in the libraries folder you have to open powershell there and use the command: 

```dir -Recurse | Unblock-File```

Brickbox is used to manage Grasshopper snippets, so you can save combinations of blocks to import later in other files. When saving a snippet make sure to double click 'add new brick', check the checkbox and click done (I first thought it didn't work properly but the size of the dialog window is not right).

<iframe width="560" height="315" src="https://www.youtube.com/embed/Vgj-j4mZafY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Using Grasshopper to generate parametric patterns (great for fashion prints and 3d printed fabrics) is magical and the tutorial below is really helpful and beginner friendly.

<iframe width="560" height="315" src="https://www.youtube.com/embed/8aVYz3hZers" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Notes
- Double click Grasshopper canvas to search for keywords
- You can send drawings between Grasshopper and Rhino
- You have to use Bake if you want to change your virtual drawing into something to work with in Rhino
- Search // to get a panel with information on your block
- Hold shift and drag to connect multiple sliders (or other inputs) to one object
- Right click and drag to move around Grasshopper canvas
- Reparameterize is very useful, this transforms ranges to 0-1 (for example on curves, surfaces etc., check panel)  
- Curved surface division: isotrim; flat surface division: quad/diamond panels
- A mesh has 3 or 4 edges!!! Ctrl + m to preview mesh; use Simple Mesh (Weaverbird) for Brep to Mesh

## Notes
<a href="{{ site.baseurl }}/files/fabricademy_computational-couture.txt" download="{{ site.baseurl }}/files/fabricademy_computational-couture.txt">fabricademy_computational-couture.txt</a>