---
title: "Automating my home"
date: 2023-11-23T05:30:00-07:00
tags: ["Homelab", "Home Assistant", "zwave"]
series: "Homelab"
draft: true
---

For a very long time I have always been fascinated with home automation. It's soo much more than just turnin a light on and off with my phone. It's about adding intelligence to my home that makes the lives of my family better by removing unnecessary tasks and optimizing how we operate. 

## Example

For example - take your standard consumer HVAC forced-air system in homes today. It's an incredibly simple system that reads the temperature from a single point (typically a thermostat) and turns on and off the heating and cooling valves based on that. 

This functions perfectly fine - but what if we could make it smarter? What if instead we add a sensor to each room in the house to read temperatures and collect the data in a centralized point to decide how to heat/cool more effectively? 

The bedrooms in the house are largely unused during the daytime - so let's divert that intelligence to the main living spaces and ensure they are prioritized.

## Getting Started

I'll discuss my setup as there are an unlimited amount of ways to get this setup.

**Note:** If you are interested in an streamlined package for setting up Home-Assistant on a bare piece of hardware, please let me know. I am considering it. (Thinking something like 4 cpu/8gb ram).

You'll need somewhere to deploy Home Assistant - for me I use self-hosting as a chance to learn more about different parts of Kubernetes and application orchestration that may overlap in my work. So I have a Kubernetes cluster solely for deploying home services. There was a lack of popular and supported home assistant Helm charts - so I ended up starting a repository for collection of helm charts I use for Home Assistant. You can fint it [here](https://github.com/brandtkeller/home-assistant-helm).

Once deployed you'll configure a number of things - I'm going to add an in-depth guide for that soon - as it contains a lot of details.

## Running Home Assistant

Once up and running you now have a platform that can essentially do a great many things and integrate with a great many devices. Just googling some device characteristic and "home assistant" will net you with a lot of information towards good devices to focus on. 

For Me - I wanted to focus on a few things:
- I wanted as few wifi devices as possible
- I wanted to de-couple where management of those devices was from the home assistant platform if possible.


## Protocols

To solve for the first focus item - I opted to find a protocol supported by many devices that would allow me to control them remotely. Prior to even beginning this I had been purchasing hardware for my home that could later be integrated into home assistant. So I chose Zwave as my protocol of choice. 

## De-coupled management

To solve for the second focus item - I opted to deploy [zwave-js-ui]() in multiple key locations such that I could control data retention for each location separately. Should I need to recover from a disaster I can simply re-deploy zwave-js-ui and migrate my data and hook it up to any home assistant (new or existing) instance and be ready to automate. 

## What does it look like?

Home Dashboard:
![](/images/home-dashboard.png)


Office Dashboard:
![](/images/office-dashboard.png)

Both of these are deployed in separate locations and can be controlled from home assistant. 

## In action

Take for example the office Dashboard - I have automation setup such that when I place my phone in do-not-disturb mode I will automatically turn on the outside office light - which is an RGB bulb - and set it to red. Now my family knows that I'm in a meeting and to enter quietly should they want to come say hi. 

## Conclusion

There is so much more to dive into that I am a little unsure what not to include in this post. Home automation has been a fun and rewarding experience and I am looking forward to digging deeper into home automation in the future.

Home Assistant is the defacto standard for self-hosted home automation in my opinion. It removes the need for cloud connectivity in many scenarios and allows for a more flexible approach to home automation.
