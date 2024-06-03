---
title: "OSCAL from a Developers Perspective"
date: 2024-01-23T05:30:00-07:00
tags: ["OSCAL", "Development", "RMF"]
series: "Development"
draft: false
---

![](https://content.bekindchooseviolence.com/audit-as-code.png)

I'm sure I am not alone here - but at one point in my engineering career I had helped build a platform, and only after building it did we come to the threshold that was - "Has this been evaluated by security". IE traditional silos and the need to evaluate for compliance across controls that may or may not apply. 

In the era of DevSecOps and the Sec was never integrated. Embarrassing in some perspectives but I had no background to even constitute knowing what standard we would even be evaluating the platform against. Ignorance does not get a free pass though - and it instilled a need to understand why there wasn't any data to pull for re-use. This activity is done time and time again with many of the same tools and architectures and yet each one is done in a silo? that didn't sit well with me. 

So when I naturally came to see what NIST's [Open Security Controls Assessment Language](https://pages.nist.gov/OSCAL/resources/concepts/layer/) (OSCAL) was, many ligthbulbs started to signify there was something here to work through. `Machine-Readable` is something I cannot ignore - it provides a known structure for how to organize and process the data. Given some other architectural decisions that the NIST team made - it also enabled me to SHARE my information. Meaning both re-use but also expanded subject matter expertise reviewing and challenging the content to the benefit of all consumers of that `component definition`. 

## So What

I mentioned OSCAL to many people to challenge my understanding of RMF more and look for other options. I'm an engineer and there are cyber/security personnel who have been deeply engrained in these processes much more than myself. The problem is I have still yet to get a good answer to "how else could we be doing this?". Some balk at OSCAL - "They're static documents much like my excel spreadsheets" - but they completely miss the potential. When the data is sitting in known-defined structures for which I can programmatically operate on them - I can do seemingly anything for the mission. 

I can share the modular components. I can add or augment control information to include assessment criteria or payloads. I can perform assessments by reading in OSCAL and producing OSCAL reports. There is zero lock-in to my or anyone else's data such that it can move between systems or GRC tooling efficiently (when supported). It can be the glue between reporting/visualization functions and the runtime environment as we work towards true Continuous Compliance. 

## How?

When it comes to accreditation - we usually have a predetermined standard that we are pulling control information from - Our `catalog` and `profile`.

Our systems are comprised of many different `components` - these can be artifacts that do not actually live in any single environment just yet - rather they are software packages waiting to be utilized and configured appropriately. 

Then we have the actual system in an actual environment. We pull the `components` at play, which reference a `catalog/profile` and we then work through the assessment layers to report on artifacts that ultimately support the `system security plan`.
- `Security Assessment Plan`
- `Security Assessment Result`
- `Plan of Actions and Milestones`

## Augmentation

Now - as a software engineer I wanted to explore (and still intend to explore more) the augmentation of OSCAL to automate as much as possible. Reduce the manual time required by humans performing validations - which can take considerable time. In [Lula](https://github.com/defenseunicorns/lula) I set out to consume `component definitions` that were modified to contain an evaluation that automation could assess and determine `satisfied` vs `not-satisfied` for a given control. Essentially building a `security assessment results` artifact. 

Given the discussion that `Trust` has in highly-secure environments - I wanted to ensure the provenance of the assessment is driven from the OSCAL - not anything internal to Lula. Yes entities may want to review the Lula source code to understand execution and how it operates - but the primary driver for the assessment intelligence and where all the trust should be placed is actually in the OSCAL by design. 

## What's next

The world is ours for making better - and I intend to keep exploring the generation of OSCAL artifacts for sake of improving the lives of those in the assessment process but also accelerating the accreditation process and getting functionality to the mission faster.

That said - OSCAL is not easy. There is a learning curve involved and the cognitive burden for those who have OSCAL presented to them can be quite large. I intend to build tooling that lowers cognitive burden 

Are there any competing frameworks I should be looking at? Please reach out and let me know. If Open Source and not tied to any one single suite/application/product - then I am all ears. Data freedom is the driver behind all architectures I am working towards. 