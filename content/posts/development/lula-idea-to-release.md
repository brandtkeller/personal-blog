---
title: "Lula - From Requirement to Release"
date: 2024-01-11T05:30:00-07:00
tags: ["Lula", "Development", "Open Source"]
series: "Development"
draft: false
---

![](/images/lula-banner.jpeg)

It's amazing to me the return on investment that comes from a company investing in themselves. Every month we're given 2 days and the ability to focus on an area of experimentation that could align with our mission objectives.

July 2022 - Small team formed to discuss the topic "OSCAL". That's it - no prior solutioning or planning, just prior knowledge from a few on other R&D engagements that informed us OSCAL was a topic we wanted to look at. 

## Landscape

First two day sprint (July) - we surveyed the landscape as far as tooling went. Collected capabilities that were already available and began to brainstorm gaps. Initial analysis resulted in wanting to focus on the developer persona of OSCAL in relation to a configuration.

Second two day sprint (August) - Pivot from the developer persona to auditing configuration and the impact of changes to systems and potential misconfiguration. White-boarding potential existing tools vs a new implementation. No code yet produced.

Final two day sprint (September) - Team met in-person and - with some predefined expectations around what the goals were for implementation - wrote code that consumed OSCAL with a specific payload and performed validation of requirements that mapped a declarative configuration to a control from NIST SP800-53. 

If interested in the framing of the problem we had at the time - the [Repository](https://github.com/defenseunicorns/OSCAL-Team) is still publicly available and largely unmodified from the time we were conducting this R&D.

## General Ecosystem

The above outlines how we organized around a very broad topic and started to begin executing on a solution. The missing context here is that we had some underlying foundation to lean on. 

- We were scoping this to declarative configuration validation (Kubernetes)
- We knew we could lean on Policy to be that validating engine
- We knew we wanted to consume the yaml format for OSCAL

Given those knowns - we built the initial version of Lula using [Kyverno](https://kyverno.io) as an SDK for performing the validation. We could successfully query all of the required resources we needed for a given control and prove that the configuration was valid - while also injecting a failure configuration and having the result changing to `not-satisfied`.

We knew collectively we were on to something here.

## Policy as Code

A lot of people may debate policy (are we talking Policy or policy) here but I believe it serves more than simply a role in the admission of new resources. We took another look instead at the use of it to wholistically audit groups of resources.

## Next Steps

One of the first engagements following the creation of the tool was a NIST mini-conference virtual event. See [Here](https://csrc.nist.gov/csrc/media/Presentations/2022/oscal-mini-workshop-6-DoD_P1/images-media/PlatformOne-DefenseUnicirn-202210-13-2022-HD.mp4) - general idea being the presentation on the use of OSCAL and teh value to Cyber programs while then demonstrating the tools ability to ingest OSCAL -> validate against a live environment -> upload findings to a GRC platform (RegScale).

I had submitted to speak in a co-presentation at KubeCon NA 2022 around a topic surrounding Compliance in strict environments. Naturally this auditing tool was primed for discussion and - with some design help - we chose a new name and logo that aligned to the Defense Unicorns way. That presentation can be found [Here](https://youtu.be/1tivKIprMsw)

We then followed that event with interested parties to continue to demo the idea. We weren't selling anything to anybody - but rather opening the door to the potential of the problem space and inviting others to join us as we performed discovery and innovated - entirely in the Open Source.

The problem here is that defense Unicorns was not yet positioned to simply staff a new Open Source project and I still have deliverables for my day-to-day work that required attention. We demo'd with the intent on finding an organization that aligned with our values for Open Source development and understood.

That doesn't mean work stops - rather a colleague of mine (Lucas Rodriguez) and I began to look at our foundation. How could we begin to bootstrap the necessary building blocks of what we knew we wanted to build one day. This came in the form of [go-oscal](https://github.com/defenseunicorns/go-oscal) with which we built to provide golang data-types for OSCAL that Lula would need.

## A happy wrench in the gears

While we continued to search for that partner - I was coming closer and closer to the impending birth of my son - which meant that this initiative was going to have to take a pause while I was on 4+ months of paternity.

## The Return

Coming back refreshed and hungry to get back to engineering - while also finding out that someone who believes in us hit the "I believe" button for Lula - we were ready for takeoff. 

This meant a complete overhaul of the backlog and objectives - more experimentation and discovery to conduct - and a team ready to execute. 

We set about looking at Lula through the lens of not making any assumptions about the work we had already done. Augmenting `go-oscal` to support all of the OSCAL models across the released versions after `1.0.4`. We looked at a few core issues:

- The Kyverno implementation lacked the ability to do validation with many collections of many resources. 
  - IE Mapping across multiple resources - something required for rich auditing/validation
  - This meant looking at other policy engines - a very obvious outlier being OPA and it's SDK for golang.

- We brought OPA onboard - defined a future with which there may be other validating entities (providers) and also the future where there will be other domains of information for collection (domains).

- With those, separating the implementation into:
  - Collect the data (domain)
  - Validate the data (provider)

## Release

We worked on this September through now and continue to develop based on new discovery efforts. I never thought I would find myself reading deeper and deeper into GRC but here I am. I am here for the ecosystem, open source, and the communities who are collaborating to solve common problems. 

I thought some might find this story interesting. People create wildly successful and new Open Source tools everyday. Lula is a niche that I don't expect to see adoption compared to that of GitOps tooling or other successful tools - but that was never the intent. I want to make the lives of people better - and I have zero doubts that this is possible given the discovery we've done to-date around this space and what automation could facilitate in building highly secure systems.

The amount I have learned in the last year alone since starting this is immeasurable. Always Always Always approach every problem you face with the grit and determination to find the best solution. I am very grateful for Defense Unicorns for knowing the impact we can make in this space and providing the autonomy to explore domains and new ways of thinking. 

Thank you for reading!