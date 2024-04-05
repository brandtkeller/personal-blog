---
title: "Developer Environment Experiment - Developing solely in Containers"
date: 2024-04-05T05:30:00-07:00
tags: ["Development", "Productivity"]
series: "Development"
draft: false
---

## Setting the Stage

In a week of the news around xz utils backdoor vulnerabilitity, it provides a reminder that there are systems that we need to remain vigilant in monitoring. 

I'm a believer that one of our most vulnerable assets is our developer environments. We conduct tons of experimentation and use them to drive upgrades to downstream systems.

How are we keeping track of what is installed and the versions etc? seems like a solved problem - but I can guarantee that even big enterprise still remains vulnerable - more so in the age of containers.

Now take startup culture where the full spectrum of secure to wild west is a real possibility (I can sleep soundly knowing my organization is likely forward leaning in security here, although that may not have always been the case).

## Target Acquired

I have a development system that's been in continual daily-use for multiple years now. Experimentation across many open-source projects and ideas that have sprung into something executable. Many languages - many package managers - etc etc.

Things add-up on the filesystem - even if you attempt to cleanup. Multiple projects in motion concurrently means that there may be a lot of in-progress ideas stored up.

## Step 1 - Plan

I operate on GitHub day in and day out. Which means that If I am committing early and often - the idea of losing my work is quite small. I wanted to use this to my advantage. Looking at dev-containers, I knew there was something I wanted to leverage - but the project-specific nature was a bit of a hurdle. I needed something more general purpose.

So why not just develop with containers in a semi-persistent manner? The dev-containers extension for vscode actually does a lot in the way of compatability and credentials for things like git.

So what is the best way to commit to an experiment? wipe the machine.

## Step 2 - "rm -rf /*"

Did my work for the day - backed up any relevant data that I may want to cherry-pick in the future and then wiped the machine.

let's start over.

## Step 3 - Bare Essentials

All I wanted to install on the host itself was the bare essentials.
- VScode
- Minimum Extensions (dev-containers, remote-ssh)
- Docker

As far as developpment goes... that's it. 

## Step 4 - Use Ephermeral as a feature

Now the guiding principals for developing within containers. If I am not mounting any persistent volumes, then any time I remove this container from running - all the ephemeral data is gone.

This is extermely valuable to me in constant experimentation. Installing some new package or dependency - no need to remember to come back and remove it afterwords. At a minimum, when I update the container (on some established cadence), then it'll be gone anyway. 

## Step 5 - Container Focus

From here - it's all about tracking required tooling and development environments with separation that makes sense in day to day. 

Currently experimenting with a few different builds that all stem from a common base image. See the [repository](https://github.com/brandtkeller/dev-env) for more information.

Runtime of the containers can be as continuous as required - from simply a shell to a container that runs continuosly that I can connect to with VSCode. Think separate-isolated developmetn environments by language (go, python, javascript) or purpose (CLI, Kubernetes, etc). 

## Conclusion
I've gloseed over quite a bit of the actual details in how this all coalesces together. How the VSCode workflow handles complexities such as gitconfig, ssh keys and other processes like allowing signed commits without having anything built-into the container itself.

I'll dive more into those in future topics. Right now - I'll continue to experiment and look at what is really necessary for daily development - as well as using this same workflow to develop on beefier machines and treat my laptop as a thin-client of sorts. 

More to come! thanks for reading. 