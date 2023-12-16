---
title: "AI for Productivity"
date: 2023-12-14T05:30:00-07:00
tags: ["AI", "Productivity"]
series: "Development"
draft: false
---

![](/images/llm-image.jpeg)

For those who adopted AI technologies early - this may not be the article for you. At the release of ChatGPT over a year ago now I was skeptical at best as to how it could make any meaningful difference to my day to day work and life. But I was wrong.

I wouldn't say I am slow to adopt new trends - but there was soo much hype around LLM's that it was difficult to tell noise from reality. It took me a few months and some encouragement from peers to really include AI in my every-day development. I'm writing this article in the event that there are still people who have not seen the productivity improvements that can be had by a few choice decisions. 

## Super Google

Chat LLM's such as LeapfrogAI and ChatGPT are great for taking an idea - and having almost a working session for what you are trying to do that far extends the reaches of what exists on google to-date (IMO). Very rarely am I working on something that someone else has built line-for-line in the exact why I need it for inputs/outputs - but I used to use these and piece together the puzzle from many different places.

Now I can have a conversation that describes an initial concept (prompt) - get a response and then continue to refine that response by adding more context or clarity. Something that may have taken considerable reading through development documentation is available for suggestion now.

## Accuracy 

Are the responses always the best or %100 correct for my use case? nope training data and RAG have a part to play here and you may very well end up with a solution that doesn't actually work. The kicker here is that you can correct the responses and sometimes (not always) get to your desired result.

## Eye Opening

The thing about ChatGPT/LLM's that really opened my eyes was testing it against something I knew quite well. Take a problem that you have solved recently or even stands out in your mind - and work through the prompts you would make if you were solving it from scratch and see how this interaction with an LLM speeds up the process for getting to a meaningful conclusion.

I've found more often than not that it can come quite close to offering insights to the problem I had to solve in a quick period of time as it has context across questions - whereas traditionally you may have had to interact with multiple sources to get to an outcome. 

## Code Generation

With service offerings such as Copilot, we can write code and translate ideas in plain-english to code quickly. This is incredibly useful for an active rubber-duck development flow. To me the biggest enhancement has been automation of writing the generic crud at the tap of a key (tab). 

All of the common code for struct tags and error checks are often suggested in milliseconds. This allows me to focus on the core logic instead of minutia that prevent compilation. 

## Secure AI

Loaded title - I'm not going to dive into the depth of what is "Secure AI" - but we've seen a lot of barrier to entry being the disallowed practice of using the public-facing services. Fortune 500 companies may have approached this space cautiously to prevent proprietary data from being leaked - which is appropriate. 

This is why I have also been so interested in running my own services locally - and why many enterprises run their own services on their own systems that are firewalled from the public-internet. We now have such Open Source Projects available for testing and improving - some outperforming the public-facing services already.

I use Tabby for my local AI coding assistant. LeapfrogAI as my Chat LLM of choice. 

## Getting Started

Want to play with a local LLM? Checkout [Tadpole](https://github.com/defenseunicorns/tadpole).

Want to host your own Coding Assistant? Checkout [Tabby](https://github.com/TabbyML/tabby)