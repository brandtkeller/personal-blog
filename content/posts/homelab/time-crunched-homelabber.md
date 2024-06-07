---
title: "The Time-crunched <insert hobby>"
date: 2024-06-06T19:30:00-07:00
tags: ["Homelab", "Blog"]
series: "Homelab"
draft: false
---

## The Time-crunched Homelabber

It's no secret - and likely I am a broken record at this point - that homelabbing is not only a hobby of mine, but also a great activity for learning.

The experiments I have ran from my own hardware have informed me in ways where I could participate in discussions and architectural decisions in ways that provided value to myself and others. It is still an activity that I work to establish as a habit in some way/shape/form throughout my schedule. 

Any chance that I come up with a new idea, I ensure that I capture it in a meaningful location. Many of which are are public repositories - feel free to pick one up to build :wink:. 

That said, everyone has responsibilities and the need to prioritize what is most important.

## Priorities

For me, and like many others - this is the responsibility of raising children, a career I am passionate about, and lifestyle choices that fuel my drive to be better such as physical fitness (or more accurately endurance cycling). 

There are only so many hours in the day and doing each of these meaningfully is much different from doing any of them partially. I've said it before - I don't half-ass anything.

Which leaves the remaining hobbies to the spectrum of "other time". 

## Example

Take for example my writing this blog. Today included:

- Wake at 5
- On the bike by 5:30 for 90 minutes outside
- Cleanup / Wake the kids / Breakfast with the family
- Hit the (home) office by 7:30am
- Work until 4pm
- spend time with family while we cook dinner
- Family time until 7pm
- Bedtime for children
- Cleanup / Prep Bike for tomorrow
- 8 pm review backlog and prep for following work day
- Now it's 8:15 and I'm writing this blog before the day ends


Not a lot of room for "extra" and I imagine many can relate. 

## Blog Infrastructure

Take for example this blog - I had an itch during one 'bout of free time to change-up the clusters running a variety of services (to include this blog) - and time ran out. I am certain everyone noticed to great dismay that this blog was down for quite some time. 

Found some constraints I wanted to address, obtained the necessary supplies and snuck in a few iterations of the infrastructure and required apps before everything was back online. 

## Nerd Talk

For those interested - this cluster is now 3x RPI 4's running k3s with the blog built into nginx. Cert-Manager is deployed within the cluster to supply certs for the blog domains to the nginx containers and cloudflare tunnels route external traffic to this isolated cluster on my network. 

## Summary

In short - I believe time is something that we can all relate to not having enough of at the end of a productive day. For me this is augmented by squeezing small notes or brainstorming sessions into some traceable location to develop later and then finding time to execute when available. Knowing what you want to execute next is often the largest hurdle. 