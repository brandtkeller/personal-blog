---
title: "The role of Open Source GRC Engineering"
date: 2024-01-28T18:30:00-07:00
tags: ["OSCAL", "Development", "GRC", "RMF", "Open Source"]
series: "Development"
draft: false
---

As a follow on from my previous post from OSCAL, I wanted to take a step back and discuss the role of Open Source GRC Engineering. If we look at traditional GRC tooling - because I do imagine there are GRC platforms today that are not Open Source but are innovating - we've seen interfaces that primarily operates on consuming data and visualizing it. Not a bad business model by any means, but where it can fundamentally fail is defined paths for data to flow.

We've seen a lot of innovation in a short period of time from cloud native technologies - whereas the governance of them is still often a manual process or the accrediting entity requires specific (and maybe not standardized) information in a specific format. There are many lenses for which to view the variety of problems that we need to solve for in GRC engineering to be successful.

## Supporting Automation

The first data flow is a pretty basic requirement - Automation. If we can't automate interfacing with the system in one way or another then we are left with a manual process. Even an opinionated data format with API's is a workflow that can suffice through other intermediate wiring. 

This allows us to establish workflows where historical can be automated by conducting some activity and generating evidence pertinent to GRC practices - IE tied to the control with which you are aiming to satisfy. This doesn't mean all automation is valuable automation - and the same goes for evidence.

- How was your data produced? 
- Can it be reproduced?
- What level of trust was placed in the execution?
- Do you know what the workflow/action/tool actually used to evaluate the data?
- What source of truth defined the validation?

All important questions to be asking yourself as you integrate automation into GRC.

## Standard Data Formats

Not just data into the platform - but also OUT. This is the role that I believe Open Source GRC engineering really has to focus on and evangelize. We often build GRC functions/tooling that augment that overarching Governance space - and data in and out of various tools is going to be a requirement for accelerated accreditation.

Another core tenant to Open Source should almost require that any artifact should be able to be represented in a standardized format. GRC tooling - whether Open or Closed source should be able to consume and produce data in a standardized format - Emphasis on produce. This means we work away from lock-in mentality of "once the data is in the system, it's very hard to leave" or data-freedom.

Any platform is useless without your data - full stop. Which means you have the power to start requiring that any one piece or ALL of it is possible to retrieve from the system in a standardized format at any given point of time.

## Evidence Collection and Data Immutability

Data Immutability is a term often coined around databases and that information residing within the database cannot be changed - hence establishing a history for how the database came to its current state. 

This is increasingly important in the context of GRC - evidence is one key component of a continuous compliance journey and that evidence needs to have supporting metadata to declare that it has not been modified. In ever evolving cloud native environments, failing a compliance check is the very reason we continuously monitor. Drift and misconfiguration continues to be a risk and a failing compliance check should kickoff a process of evaluation and remediation.

## Validation Provenance

You are now collecting evidence in an automated fashion - great! In order for this to be meaningful you now need to establish an evaluation of the evidence in relation to the GRC objectives you have set-out to accomplish.

But who gets to say what is valid and what exemptions are applicable. Certainly not to say this needs to be the responsibility of a single entity - but metadata needs to exist the defines context as well as enables those responsible for an actual environment to centralize and assert that the validation has not been modified without proper review processes.

## Reference Architecture

Automation and augmentation of GRC is needed in increasingly quantities to match that of evolving technologies. In the Cloud Native Computing Foundation, we are working on an Automated Governance Reference Architecture to serve as a baseline for GRC engineering practices that can be driven from the Open Source with hopes to improving the landscape of Governance. 

Please review our work-in-progress and follow-along or weigh-in where you see fit.

Document [here](https://docs.google.com/document/d/14pV0ooE40yuo0u_CH-OeWS8lZgMBfxo8F38QRIaKUXY/edit?usp=sharing)

## Call to Action

What standards should we be focusing on? What processes can we really nail down?

When we create something that truly makes someones life easier and improves workflows substantially, we can build better systems and place pressure on those who require manual or outdated processes to updated or replaced. 