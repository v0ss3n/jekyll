---
title: "Vinyl cutting with the Roland and mods"
date: 2021-02-12T11:10:23+02:00
tags: ["vinyl cutting", "roland"]
categories: ["fablab"]
layout: post
---

# Roland and the mods

## Mods
Mods are separate modules used to control the machines. Together these modules form a program. In this case we are using the modules for the Vinyl Cutter: the Roland 24.

Relevant blocks:
- Read SVG (load the vector file that you want to cut)
- Roland GX/GS-24 Relative (you can do a cut test, set image origin, set force and speed)
- WebSocket device (connection)

Speed should be about 2 cm/s