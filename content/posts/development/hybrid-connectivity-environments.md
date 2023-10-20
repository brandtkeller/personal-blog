---
title: "Designing for the Air Gap with a Hybrid Lens"
date: 2023-10-19T05:30:00-07:00
tags: ["Development", "Airgap"]
series: "Development"
draft: false
---

![](/images/software-design.jpeg)

For quite some time now I've helped build platforms and the focus has always been to deliver value to the end user first and foremost. What capabilities would we enable and how great the future would be amiright?

Early in this learning process was the role that dependencies played. The more you layered dependencies on top of one another - the greater the mountain of said dependencies grew from something maintainable to an overgrown monstrosity that threatened to break at any run of CI you introduced.

## System Design

I am not afraid to admit that I lacked the foresight to understand the implications of designing capabilities on a foundation that had not solidified. We want to rapidly prototype and demonstrate that we could essentially create a reproducible result for the thing everyone was doing 100x over without any sharing of resources of communication.

There are some serious flaws at play here - but engineers tend to keep pushing to build, build, build. 

I'm not going to bore you with the details, but there was a revelation at one point in time where the team (and some smart individuals) started to look at the permutations of the design we wanted to support and had the forethought to step back and make a realization:

> If we solve for Airgap, we solved for every permutation.

## Into the Air Gap

That's a pretty loaded statement with many nuances and something we can argue all day about. The real moment of clarity for me was seeing how Airgap is usually the most difficult to design a platform around. 

But once you do and once you do it well, it then resets the counter on enhancements you can build. You have to take intimate stock of your dependencies such that you always have what you need - but it works anywhere you take it. 

Then comes the introduction of "that's great, but I'm in the cloud". That's great, these things are not mutually exclusive and you can still apply the fundamentals of air gap to your connected environment.

## Louder for the people in the back

I'd go so far as to say you build more resilient systems when you weigh the design of an airgapped system against that of a strictly connected system (IE you pull everything from somewhere else via connectivity).

I could write a list of advantages such as controlling what you introduce into your environment and having a bill of materials (in many shapes and forms) that provide insight into what your environment relies upon.

It's the reliance piece that I really want to talk about today. When I talk about dependencies, what I really mean here is "What is your system dependent upon to operate?". Connectivity to API's that provision or monitor your infrastructure to the runtime on your VM's, Kubernetes, etc. There are soo many pieces to evaluate and if you haven't done so - are you sure that there isn't a thread in the fold just waiting to be pulled that could unravel the whole system?

## Disaster Strikes

To the point of dependencies and what you are dependent upon - do you know how many of them are requiring connectivity to some source of truth.

What happens when an outage occurs? Your pod just restarted and the container runtime begins to attempt image pull and..... failure `imagepullbackoff`. Given how portable this artifact is - did it really need to live outside your environment? do you really know what is inside that image and when it was last modified and scanned before introducing it?

How many other factors could come into play that affect your ability to operate and are you willing to accept that risk?

## Hybrid Lens

I'm not saying all connectivity is bad. But rather introducing that connectivty can be a practice of cataloged capability and understanding of pros/cons.

Take this simple example:

I run a variety of services on a variety of clusters in my home. One of these clusters is responsible for the connectivity of IoT devices that control hardware in my home. Thermostat, lighting, security, automations, etc. Am I willing to accept the risk that for some reason or another I cannot reach out to the source of an application (container image) and retrieve it for one reason or another? no way, I don't trust my internet service provider as far as I could throw them.

So I use [Zarf](zarf.dev) to provide that internal image registry in my cluster and mutating webhook to make the pain of airgap kubernetes easy and keep those container images local for any access required.

BUT Certificates are another story. I'm not messing with self-signed certificates for local use. Wife approval factor on these services needs to be high, and it needs to feel like they are any other subscription offering.

So I pawn that off to Cert-Manager and letsencrypt for a valid domain that I own. Is there risk here? certainly, the certificates renew every 90 days and if some piece of the puzzle got mis-wired then it might break one day - but it only affects the access to resources as opposed to the resources/runtime themselves. This is a risk I am willing to accept to improve user experience and remove the headache of keeping certificates up-to-date.

## Meaningful Airgap
These are things we've seen many different implementations around - and many of them are PAINFUL. Under-baked airgap implementations tend to either rely upon some expected of the puzzle that requires substantial setup to support or simply lack any vision for what it means to both deploy AND MAINTAIN an application or platform to na air gapped environment. 

Then comes the application itself - does it really support having no connectivity to the internet? maybe it runs yes, but does it operate effectively. I've seen a number of tools that contain documentation for getting the application into the air-gapped location but lack fundamental design around the data it requires to operate.

Consider any security scanning tool that operates off of the ability to ingest vulnerability feeds.
- Does the tool break entirely when it cannot access the feeds?
- Does the tool have mechanisms for injecting feed updates with a good user experience?
- Does the above allow for any automation as the data becomes accessible?

## Making things suck less

Maybe a bit of a soapbox, but we have to do better and we can't be relying upon some duct-tape to take the SaaS of a tool and make it portable and then make it operational in an air gap. 

Designing for the Air Gap first brings a lot of control over what you are ultimately dependent on and - with the hybrid lens - highlights where you make explicit choices to allow dependency on some external service in the name of enhanced capabilities.