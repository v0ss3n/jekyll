---
title: "Ultrasonic sensor motion sensing"
date: 2021-11-23T11:31:46+02:00
tags: ["electronics"]
categories: ["fablab"]
layout: post
---

# Ultrasonic sensor motion sensing
For the Fabcharter in the lab I am using various fablab techniques to make the sentences. For the question 'Who can use a fab lab?' I want LEDs in the letters to light up when you walk past. 

## Components
- Arduino Pro Mini (for prototyping)
- Breadboard & jumper cables (also for prototyping)
- Ultrasonic sensor HC-SR04
- Neopixels

"Ultrasonic Sensor HC-SR04 is a sensor that can measure distance. It emits an ultrasound at 40 000 Hz (40kHz) which travels through the air and if there is an object or obstacle on its path It will bounce back to the module. Considering the travel time and the speed of the sound you can calculate the distance.

The configuration pin of HC-SR04 is VCC (1), TRIG (2), ECHO (3), and GND (4). The supply voltage of VCC is +5V and you can attach TRIG and ECHO pin to any Digital I/O in your Arduino Board." ([source](https://create.arduino.cc/projecthub/abdularbi17/ultrasonic-sensor-hc-sr04-with-arduino-tutorial-327ff6))

## Testing
I'm following [this tutorial](https://www.tutorialspoint.com/arduino/arduino_ultrasonic_sensor.htm) to get started with the sensor, with the schematic below as a reference; since I'm using an Arduino Pro Mini the pin-out is different for me.

![schematic](https://www.tutorialspoint.com/arduino/images/ultrasonic_circuit_connection.jpg)

## Sources
- <https://fabacademy.org/2018/labs/fablabamsterdam/students/henk-buursen/week11.html>
- <https://www.tutorialspoint.com/arduino/arduino_ultrasonic_sensor.htm>