---
title: "Markdown Blogging"
date: 2023-09-24T20:36:38-07:00
tags: ["Hugo", "Markdown"]
draft: true
---

Given the wide-array of available options for where to write and host blog articles - what lead me to Hugo and the markdown -> html translation workflow you might ask? It really comes down to knowing how I operate and what would make this venture successful.... 

Knowing myself and having tried a number of content delivery blog services - I just didn't feel at home with writing content in a workflow that suited me. Inspiration striking and translating that into words is still somewhat of a new a skill that I am working to harness. As such, writing articles may be a labor of love that requires multiple writes/re-writes.

Or rather as is most common with the way that inspiration finds its way into my brain - i'll be doing some other task or workout out and need to toss the idea down for later baking. 

## Enter Hugo

[Hugo](https://gohugo.io/) is a static site generator that can be as simple or complex as you want to make it. I'll dive into a streamlined zero to hero bootstrap of what I used to create this blog website in another article shortly - but It was as simple as:
- Install Hugo
- Create a `new site`
- Pick a pre-created theme
- Start writing in `markdown`

## Optimize for _you_

This may not be for everyone and that's likely well supported by evidence of the services that exist today. But for me - my IDE and Text Editors of choice are only a few hotkeys away. 

These tools become ever more present in what "works for me" because I have a background in keeping my notes in markdown as it already is. So if I'm at home with markdown - then I can use Hugo to take processes that already work for me and turn them into the outcome that I ultimately am working towards. 

This is where it's important to optimize for the processes that you know work for you - and who knows, you might not know if they work for you or not. Experimentation is key here, we have to keep exploring and finding out how to be successful through one explicit/consistent step at a time.

In `Atomic Habits` by James Clear, he discusses how we have to "Make it easy" as a way to imbue habits. This has been my parallel to optimizing for my own success. I know if I make it difficult to do or only half-a** the attempt that I won't get the outcome I am looking for. It has to align with my values - hence why the blog and infrastructure to-date are as _extra_ as they are. 

## Back to Markdown

THanks for hearing out my soapbox for personal optimization. So what does this look like in practice?

- Inspiration strikes
- I note what it is I want to discuss
- Hugo has a built-in `hugo new content path/to/content.md` command which generates the file and some metadata
- When I get time to write
    - I write my content in compliant markdown format
    - Maybe I publish the material - maybe I let the topic stew as a "draft"
    - Commit the content to my git repository - should anything ever happen to my raspberry pi's I will always have the content

## What comes next?

Bit of a nerdy tangent - I need to to build out a pipeline that builds my blog image automatically on commit to `main`. Seeing odd deviations in current workflows for github actions that I had to disable temporarily. All of this is subject to my free-time so for now a local build-and-push is meeting my current outcomes. 