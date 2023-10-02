---
title: "Analysis Paralysis"
date: 2023-10-02T06:00:00-07:00
tags: ["Hugo"]
series: "Homelab"
draft: false
---

![](/images/churchill.png)

Welcome to my Homelab series!

A friend and former co-worker of mine - Alex - was really the inspiration behind a lot of the homelab infrastructure that I learn/develop on every single day. He got me started on what to look for and what services I may want to explore.

As many homelabbers know - this only snowballed from there. I learned much of what I know about Kubernetes and all of the related technologies by trial and error of setting up a variety of configurations and machines. I used this as a platform to enable my learning and testing.

## The Problem

As many in this domain know - you carry over your want to design the very best systems from your day to day work to the systems you run in your home. This is good and has enabled me to test technologies that have resulted in recommendation in my professional work as well.

The problem really comes down to time - time is limited/ a luxury and Homelabbing is a constant battle for:
- What is the thing I want to try or test?
- How much time do I have available to try it?

## Where I land

I run multiple clusters in my home-lab as well as treating my Hypervisor of choice (Proxmox) as my personal local cloud for which I provision VM's for quickly spinning up test spaces.

Ultimately my stance is that for anything I want to run locally - I use the infrastructure and automation that I've accrued up to this point to see how far I can stick to standard problems. Then when I reach a deviation from what I'd prefer to do - I make a note of something I change - and then I continue. Don't stop progress for the sake of some small optimization. 

## Progress

> Perfection is the enemy of progress - Winston Churchill

If every time I was investigating a new technology or prototyping some effort and I had the perfect the implementation - I'd never get anything running.

I've been hit by this phenomena many times. I've focused on small optimizations in search for a perfect implementation that I've ran out of time to actually test the end result as I had intended. 

## Notes

This is where I ensure each investigation has a notes file to return to. If the solution is one that I want to run in a continuous and stable manner - then I'll spend the time thereafter to improve upon those pain points. In doing so, I often improve my automation and workflows to account for other investigations in the future. 

Take my [proxmox-terraform-modules](https://github.com/brandtkeller/proxmox-terraform-modules) repository for example. It may be crude to some, but it provides a base for which I can continue to build automation that makes these investigations quicker in regards to setting up local test infrastructure. 

## Example

Another example is when I was searching for a self-hosted application that could synchronize photos and provide other capabilities for m family without being tied to a subscription or storage bill. I tried deploying many different systems - If I had tried to perfect any single one of them - making an actual decision would have been a nightmare. 

I ended up establishing an instance of Nextcloud that lives on my `Home Cluster`and has been providing a few services that my family uses every single day for the past few years. 

## What comes next

I am quite passionate about my homelab and plan to talk much more about experiments I've conducted (good/bad/ugly). Stay tuned!