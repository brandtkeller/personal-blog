---
title: "A week of Tabby"
date: 2023-10-23T05:30:00-07:00
tags: ["Experiment", "AI"]
series: "Homelab"
draft: false
---

![](/images/tabby.png)

Say hello to my new coding assistant - [Tabby](https://github.com/tabbyml/tabby).

> Tabby is a self-hosted AI coding assistant, offering an open-source and on-premises alternative to GitHub Copilot.

## HomeLab

For those who haven't read my previous review of [FauxPilot](), I have been experimenting with Open Source CodeGen AI for the last few months. Using an old desktop I convert to Proxmox, I dedicated my RTX 2080 to an Ubuntu VM that is my current test-bed for AI code generation tooling. 

## Footprint (Or paws in this case?)

Tabby image vs FauxPilot images:

![](/images/tabby-container-image.png)

The footprint of tabby comes with two nuances:
- The container image at around 2.12GB
- The model that is downloaded (which varies by model size)
  - The 3B model I am running is around 6GB

This is insane! a 2gb footprint is magnitudes easier to transfer and use as opposed to a 25GB+ container image.

## Model

For this first test run - I've been using the [StarCoder-3B](https://huggingface.co/TabbyML/StarCoder-3B) model. I plan to test a variety of other models in the future.

**Note:** I'm using this model as the 7B model ran into some memory issues. The 8GB RTX 2080 may not be enough for the 7B model.

## Impression

**Note:** I am looking for objective ways to test codegen tools and models. Do you have thoughts or ideas? please reach out and let me know. 

Nonetheless - subjective and perceived results still serve some purpose right?

I don't want to oversell this - But with zero context, I have been super impressed with how well it injects intelligent suggestions into writing code. 

Start up the server and add some code for what I am about to write and it wholesale provides a whole file of suggestions - take this Kubernetes Custom Resource for example:

![](/images/tabby-virtualservice.png)

Or even crazier - I had referenced an API endpoint in code and then wanted to create a struct for the list of items it was going to return. In all of 2 seconds I had a struct that almost matched the API response (I had to modify 1 of the fields to a float64 type instead of an int).

![](/images/tabby-struct.png)

This is TOO MUCH FUN. Is it always right? definitely not. But it cuts down on SIGNIFICANT amounts of time and effort to write CRUD or other code for any given task.

## Next Steps

I plan to work on configuring tabby even further. Tabby features support for RAG (Retrieval-Augmented Generation) by providing git repositories.

Imagine providing your AI with a git repository of code snippets that it can use to generate code for efficiently and with context to ground it further. 

I NEED MORE HARDWARE. Well maybe need is a bit dramatic - but I definitely want to dive further into the world of AI with particular interest around on-premise and air-gappable codegen AI. 
