---
title: "First Blog Outage - Post Mortem"
date: 2023-12-21T05:30:00-07:00
tags: ["Homelab", "Experiment"]
series: "homelab"
draft: false
---

![](/images/coauthor.png)
(Picture of my co-author and I writing this post)

First off - this is meant to be a very light-hearted post. Something that I hope to impress on others is that Homelabs are a great opportunity to learn and grow your skills in new and relevant ways - but they come at the cost of being a labor of love. Something you maintain entirely in your free time and is best-effort to maintain and keep healthy.

## The problem

Shout out to Gavin for tossing me a message that something was wrong - I have no alerting on this setup and that should be a goal for future Brandt. 

Nonetheless - attempting to hit my domain left me with a gateway error.

## Troubleshoot 

The error was obvious very quickly - as noted in the original blog post - the infrastructure that supports this blog is 2x Raspberry Pi 4's running K3s in a Highly Available 2x Server w/ External Datastore configuration.

I switched my kubecontext to that cluster and was getting a connection error over Kubectl - so the problem looked to be with the cluster. SSH'd into one of the nodes and looked at `journalctl` - error was related to the external datastore/k3s having a problem with the certificates. 

## Certificates

I run my "production" homelab cluster on separate infrastructure and use the crunchydata pg-operator to deploy postgres clusters - this is what I use for the blog k3s cluster datastore. I currently have it configured with cert-manager and a self-signed issuer.

Problem here is that I didn't modify some of my other letsencrypt certificate templates and the expiration was set for 90 days - well folks - we've been blogging for about that long now.

So Cert-manager rolled my self-signed certificates which the postgres cluster was updated to use and then all hell broke loose.

## Recovery 

Recovery was actually pretty easy - bring the new ca/cert/key over to each node and restart the k3s service.... DONE!

Everything came back online and healthy!

## Next Steps

Still a work in progress - winter vacation has a limited amount of coding time available - Long term plan may be to re-work my postgres self-signed certificates to be more static - otherwise move my blog to be orchestrated on the "production" homelab cluster. 