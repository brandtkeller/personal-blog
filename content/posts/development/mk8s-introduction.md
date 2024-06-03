---
title: "Introducing mk8s"
date: 2023-12-25T05:30:00-07:00
tags: ["Development", "Kubernetes", "Highly Available", "Air Gapped"]
series: "Development"
draft: false
---

![](https://content.bekindchooseviolence.com/mk8s-preview.jpeg)

[mk8s Github](https://github.com/mission-focused/mk8s)

I am always looking for ways to break the extreme fundamentals of air-gapped execution into modular chunks that make application in disconnected and connected environments more capable. If you solve for the air-gap, you've likely solved many other delivery and orchestration problems in connected environments.

If we are talking containerized workloads services, [Zarf](zarf.dev) already handles a majority of the considerations for everything post-Kubernetes (Specifically everything _after_ the cluster has been created). What that means is there is still a gap here - we need Highly-Available Kubernetes clusters in the air-gap, and we need to be very careful to document the dependencies that get us there.

## Einsteins Razor

> The supreme goal of all theory is to make the irreducible basic elements as simple and as few as possible without having to surrender the adequate representation of a single datum of experience." Often paraphrased as "make things as simple as possible, but no simpler.[1](https://en.wikipedia.org/wiki/Philosophical_razor#:~:text=Einstein's%20razor%3A%20%22The%20supreme%20goal,possible%2C%20but%20no%20simpler.%22)

I continue to battle with this when thinking about this space. When have we crossed the line and when should that line not be crossed? if it was a significant time investment, I might be more careful. But if we've made/make 1 persons life better - mission accomplished.

## The Question

Why doesn't this exist today? Maybe someone can provide me and others with a good answer - but I refuse to accept the ansible fulfills this requirement in full. A single binary to collect what you need and execute the orchestration across many nodes in a declarative format that does not require the operator to know much more than the distro they are orchestrating.

## Enter mk8s

I wanted to take the robust air-gap processes that RKE2 already has to-date and provide it with an instruction-set that just glues the rest of the commands together across many nodes in-order to create a declarative manifest for a Highly-Available cluster.

A statically-linked binary and required artifacts are a portable tool-set that removes the need for managing/pinning dependencies for which your end-users will need to be accountable for. 

I'm not going to sugar coat this - nothing here is new or novel - it's SSH and SFTP running shell commands at the end of the day - but I really dislike the user experience that ansible has for _delivering_ capabilities like this to end users. 

## Call to Action

For the observant individuals - you may have noticed this project doesn't live under my personal Github account. Rather [Mission Focused](https://github.com/mission-focused) is an Organization I created with this being the initial tool to start to communicate what I hope this organization will become. 

This tool needs mission focused individuals who work with this problem space day-in and day-out to find all the edge cases - and let me tell you - there will be tons and there is just as much room for contribution and participation as we look at expanding the capabilities. 

## Conclusion

Again - this is less of an announcement or special release as it is a reason to have a conversation. How can we do better and enable the most secure environments to expedite going from no infrastructure to having a running, highly-available environment 