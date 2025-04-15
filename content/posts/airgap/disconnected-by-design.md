---
title: "Disconnected-by-Design: Rethinking Cloud Native Principles"
date: 2025-04-15T08:00:00-07:00
tags: ["Cloud-Native", "Airgap"]
series: "Airgap"
draft: false
---

![](https://content.bekindchooseviolence.com/disconnected-design.png)

If you’ve ever worked in a disconnected environment - or even just a flaky one - you probably understand.

That feeling when something fails *not because your code is broken*, but because your tooling made an assumption about connectivity.

A tiny one.  
A quiet one.  
But critical enough to tank the whole operation.

Let’s talk _more_ about that.

## Cloud native assumes the internet will always be there

Most modern platforms lean hard on SaaS services, cloud APIs, dynamic registries, and live secrets. This makes things *feel* seamless - until the network drops, your git platform goes sideways, or DNS just stops cooperating.

If you’ve ever run a Terraform plan and hit a module timeout  
…or kicked off a Helm install that 404’d on the chart repo  
…or watched a CI pipeline stall because it couldn’t fetch a KMS token

Then you’ve already felt the cost of that assumption.

## But what if the internet isn’t part of the plan?

That’s where **disconnected-by-design** comes in.

Instead of scrambling to fix breakage after the fact, we start with the idea that **nothing outside your control will be available at runtime**.

It’s a mindset. One that shifts how you design, build, and deploy cloud native systems - regardless of whether they’re going into a submarine, a remote base, or a normal cloud VPC with risk tolerance.

## What this mindset looks like in practice

Let’s play it out:

| Traditional Cloud Native     | Disconnected-by-Design                 |
|-----------------------------|----------------------------------------|
| Pull from public registries  | Bundle images into portable packages  |
| Remote secrets from KMS      | Ship static secrets or internal vault |
| SaaS observability           | Use self-hosted telemetry tools       |
| GitOps from GitHub           | Mirror Git repos locally              |

It’s not about being airgapped.  
It’s about being **resilient**, **repeatable**, and **ready for chaos**.

## Airgap is just one extreme of a larger spectrum

You don’t have to be fully disconnected to benefit from this approach.

In fact, *some of the worst failures I’ve seen happened in “connected” systems*:
- Someone revoked the wrong GitHub token mid-deploy
- A container registry timed out in the middle of a rollout
- A team didn’t realize a tool pulled release data from a website

When you treat those dependencies as optional - or at least not critical - you start to build systems that shrug off failure.

That’s the real power of this design.

## What do disconnected systems force you to do?

- **Think about everything you need ahead of time**
- **Make your builds deterministic**
- **Document your process (or bake it into a pipeline)**
- **Test for failure cases** - especially when the internet is *sort of* available

You don’t get to assume anything will “just work.”

But what you *do* get is clarity.  
And repeatability.  
And a system that can stand on its own when everything else is falling apart.

## Summary

> You don’t need to be deploying to a submarine to benefit from disconnected-by-design.

In fact, building like you don’t have connectivity just makes your stack **more honest**.

You’ll know exactly what it depends on.  
You’ll have a path to recreate it.  
And your systems will keep working even when the nice-to-haves disappear.

That’s not just tactical edge resiliency. That’s good engineering.

Let's continue to lay the foundation for why the past/present/future can benefit from a disconnected-by-design approach to cloud native. 

## Want to go deeper?

- Join us in the Kubernetes Slack in `#zarf`
- Check out the [Zarf project](https://github.com/zarf-dev/zarf)
- Ping me on socials or Slack if you want to swap notes about deploying in the weirdest places imaginable
