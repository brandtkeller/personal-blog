---
title: "The role of Open Source GRC Engineering"
date: 2024-01-23T05:30:00-07:00
tags: ["OSCAL", "Development", "GRC", "RMF", "Open Source"]
series: "Development"
draft: true
---

![]()

As a follow on from my previous post from OSCAL, I wanted to take a step back and discuss the role of Open Source GRC Engineering. If we look at traditional GRC tooling - because I do imagine there are GRC platforms today that are not Open Source but are innovating - we've seen interfaces that primarily operates on consuming data and visualizing it. Not a bad business model by any means, but where it can fundamentally fail is defined paths for data to flow.

We've seen a lot of innovation in a short period of time from cloud native technologies - whereas the governance of them is still often a manual process or the accrediting entity requires specific (and maybe not standardized) information in a specific format. There are many lenses for which to view the variety of problems that we need to solve for in GRC engineering to be successful.

## Supporting Automation

The first data flow is a pretty basic requirement - Automation. If we can't automate interfacing with the system in one way or another then we are left with a manual process. Even an opinionated data format with API's is a workflow that can suffice through other intermediate wiring. 

This allows us to establish workflows where historical data can be automated by conducting some activity and generating evidence pertinent to GRC practices. This doesn't mean all automation is valuable automation - and the same goes for evidence.

- How was your data produced? 
- Can it be reproduced?
- What level of trust was placed in the execution?
- Do you know what the workflow/action/tool actually used to evaluate the data?
- What source of truth defined the validation?

All important questions to be asking yourself as you integrate automation into GRC.

## Standard Data Formats

Not just data into the platform - but also OUT. 