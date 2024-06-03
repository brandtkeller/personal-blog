---
title: "Cyber Monday Deals for HomeLab happiness"
date: 2023-12-11T05:30:00-07:00
tags: ["Homelab", "CodeGen"]
series: "Homelab"
draft: false
---

![](https://content.bekindchooseviolence.com/homelab-3060.jpg)

My ability to learn about new technologies often comes with needing to play with pieces of a larger concept. I can do lots of reading and tutorial-based learning, but ultimately getting my hands into the different pieces is how I learn best. 

I've been taking this approach with LLM's and Generative AI in my HomeLab but..... this comes at a cost. I won't begin to claim to know the difference in operation of Ai capabilities across GPU and CPU and how they compare... yet :wink:. But what I do know is that with resources I am actively testing (Chat / CodeGen) - I need GPU power.

## Hardware

I need to do a tour of my homelab one of these days - It primarily consists of a full-height server rack - that is only partially filled - with a number of machines ranging from my 3 node proxmox cluster to a number of other bare-metal nodes that I cluster in various Kubernetes clusters. 

Nonetheless, I decommissioned an old gaming desktop to make-up one of these proxmox nodes - and it had an 8gb RTX2080 in it. That performed well - 3B models were about as large as I could run but I still enjoyed it's capabilities. Given that I was running these capabilities on a VM with the GPU passed-through - I could test other GPU technologies simply by ensuring only one had occupied use of the GPU at a time. Worth noting here that I also use terraform for creating all of my Proxmox VM's (Checkout my homelab repo under infrastructure). This let's me quickly and easily deploy new VM's with varying resources and having traceable state to sync.

## Cyber Monday

I can't say I was actively looking - but I saw an RTX 3060 in the 12gb flavor drop to $200 and I had to pull the trigger. I knew I could fit larger models which would open up the space I had to experiment. With quick shipping it was on my doorstep not long after and I went to work with swapping the cards and re-deploying my AI VM's. 

![](https://content.bekindchooseviolence.com/homelab-hotswap.jpg)

I can't just leave the RTX2080 unused now can I?

## Used Gaming PC market

Surprisingly enough - if you look at the used market for Gaming PC's you usually find a wide spectrum of builds. Some outrageously priced and others more affordable. I was looking for a dated ryzen system to toss this RTX2080 inside and found a Ryzen 7 1700x build with 32gb memory / NVME / hdd etc and thought it fit the bill well. Outfitting this for inclusion in my proxmox cluster here when I have some more free-time. 

## Result
Work in progress? All my systems are back online and I am back to testing. Future articles will cover my thoughts on perceived differences across models. Not that some new advancement won't come along in the next month and upend my learning - but that is all in the name of progress. 
