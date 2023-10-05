---
title: "Blogging - the hard way"
date: 2023-09-23T11:30:34-07:00
tags: ["Kubernetes", "Hugo", "Nginx", "Homelab", "Experiment"]
series: "blogging"
draft: false
---

## Welcome!

You are here:
![](/images/rpi-closeup.png)

You might be asking yourself how you ended up here. I'm just as surprised as you are :wink:.

Nonetheless, these are the hosts for the website you're viewing - or rather they run this workload and others with some room to spare as an experiment.

(More specifically - Two Raspberry Pi 4's)

## Why?

The answer is because I'm very _extra_ when it comes to looking to accomplish any high-level objective in the most difficult ways possible (kidding of course). So maybe this is less of "Blogging the hard way" and more of "Blogging the extra way".

The real reason is that I wanted to establish a blog and thought - experimenting with the use of extra hardware, a variety of Open Source tools, and technologies that could take my thoughts in `Markdown` and translate them to web friendly contexts - could be the gateway towards getting me started (See the _extra_)

I've wanted to write for a while now. From everything in the arena of Software Development and Continuous Learning, to remote worklife, wellbeing and soo much more.

## How?

I'm going to keep this short as I'll write a deep-dive in another post for those who really want to dive down that rabbit hole.

The guts:
- Cloudflare domain
- 2x Raspberry Pi 4's
- HA K3s using an external datastore (A separate long running cluster)
- Cert-Manager
- Cloudflare Tunnel
- Nginx w/ my Hugo content "baked in"

On the surface, this serves web content via the tunnel without having to open any ports or "expose" my public IP to direct traffic. Lot's of improvements to still be made. If you want to follow along - simply see the [source code](https://github.com/brandtkeller/personal-blog) for this blog.

## What is next? 

I want to keep writing - and I'm going to do my best to generate _some_ content on a regular basis. Likely going to see a variety of topics surface as I find what inspires me to write about. I am also keen on experimenting with mental and physical workflows to see if I have any opinions on improvements to my daily life.

I believe a markdown system is my gateway to writing more regularly. I dislike platforms that require you to write in their text editing interfaces - I want to stay in my IDE and focus on writing about my inspiration as it comes to me.

## Comments 

I am looking at a few comment engines that are supported by Hugo and hope to get a system online as this blog matures. Until that time, please interact with my social media posts for letting me know what you think (good/bad/ugly).

Thanks for joining me on this journey!