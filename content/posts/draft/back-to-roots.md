---
title: "Going back to my roots"
date: 2025-02-24T05:30:00-07:00
tags: ["Growth", "Development", "Adaptation"]
series: "Development"
draft: true
---

![](https://content.bekindchooseviolence.com/Ron.jpg)

Events occur, Priorities shift, adaptation is required. 

The last year has been a consistent roller coaster. I've always been on the edge of what defines security controls and how we architect systems to meet and exceed the requirements. My knowledge of compliance was sufficient enough to collaborate with others on answering the required controls and moving on with development efforts.

The thing is we knew that better existed - or that it should. The processes were frustrating, time is expensive, and generally the fidelity of the data didn't meet the same fidelity of the other artifacts we were producing. 

So we chased the problem space - learned incredible amounts about how common this problem is and what solutions people were standardizing on that would really provide a "Rising Tide" effect. 

I have a new appreciation for the technology and people at the intersection of Security & Compliance.

## Roots

So what is all this roots business? 

I needed the above to set the stage - combined with events that lead to another intersection. 

I worked with and on teams in the past that had very real requirements for airgapped infrastructure support. It's a fascinating problem space that often gets passed over. A system that airgap-native doesn't inherently have to be deployed to an airgapped. Rather the architecture is built to be resilient to connectivity demands and has assurance for how it operates. 

Technology is advancing - yet the inflection point for many capabilities to support an airgapped deployment is lagging behind. 

So when a pivot came and I was requested to work on [Zarf](https://github.com/zarf-dev/zarf), I was actually excited to come back to my roots and focus on the ecosystem of Continuous Software Delivery that optimizes for the airgap. 

## Lula

Yes, this does mean that my attention is being pulled away from Lula. There is unfinished work here - some of which others have helped me realize has no incentive for better. That isn't a good enough reason for me to want to stop working on OSS tooling that automates assessments.

At the same time, I do firmly believe that the convergence of Security/Compliance and Financial, Defense, Healthcare and other Private sector domains is headed in a properly collaborative direction. Never have I seen groups of people - solving for their own specific problems - so engrained in sharing their perspectives and being open to collaborating on solutions that can be extensible enough for many domains. 

So while this work is paused in its current state, I do expect to see a resurgence in some way when incentives and requirements begin to converge on Automated Governance.

This work was incredibly valuable to me. Seeing the concepts click with people who also have been looking for solutions but may not have funding available to purchase a solution. 

## Zarf

For now, I am shifting gears - staying with the area of software I am most passionate about (Open Source). 

Zarf is what lead me to join Defense Unicorns - and now I intend to dive into what the ecosystem and operators truly need to deploy critical cloud native workloads to systems; cloud, edge, or otherwise.

If you have not yet looked at [Zarf](https://github.com/zarf-dev/zarf) - it solves for a very real problem with the on-premise deployment model (and particularly airgap deployment model) of enabling GitOps for disconnected systems. 

If you look at airgap documentation for almost any cloud native (and specifically Kubernetes) application - we see the same recommended patterns.

- Pull all the required images
- Pull the required helm charts or manifests
- Push the images to an internal registry
- Make a series of modifications to the orchestration
- Deploy in a very specific way

Cloud Native makes this inherently possible - but it leaves SO MUCH ROOM FOR ERROR. 

What versions did you pull, are they all compatible, did you change every instance of the image references, etc etc?

Zarf turns this all into a declarative package - inventory of everything you need to collect and how to deploy it - while removing the complexity of what needs to be modified to a minimum. 

This package can then be reliably built and shipped to 1 or many different disconnected environments for exact deployment of the same artifacts in the exact same way - all with a single command. 

## Next steps

As Ron said best above - I intend to lean into what is needed from the ecosystem to make airgap compatibility a first class citizen for cloud native applications. Not a sheer force of "everything should be compatible". But more importantly "do you know how your application responds without connectivity" or "intermittent connectivity". I think the results would surprise some people. 

I refuse to do anything half-assed - but I will be looking to leverage all of the experience of the last year to collaborate on solving more of the hard problems that critical missions systems face with the evolving technology landscape. 