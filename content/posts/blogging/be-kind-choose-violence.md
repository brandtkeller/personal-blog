---
title: "Be Kind - Choose Violence"
date: 2023-12-18T11:30:34-07:00
tags: ["Blogging", "Experiment"]
series: "blogging"
draft: false
---

![](/images/mattis.jpeg)

When I was first getting ready to kick this blog off - I was looking for a unique domain name. I had already purchased `brandtkeller.com` and that is/was more than sufficient, but I loved the idea of something more playful and fun that added a little flare to the creation of content.

Listening to some Jocko Willink Podcasts while getting my indoor cycling session in and there was that common joke "so and so woke up and chose violence" and I laughed - then got curious if there something there to explore.

## Be Kind

You'll notice that the whole of the message I am looking to drive conversation around is two-fold. First and foremost: `Be Kind`. It's not a hard thing to do - but I come form the background of being molded by the Marine Corps - I'd be lying if I said that didn't have an impact on my life - both for better and worse.

We used to thrive on this dog-eat-dog energy where anger was fuel for establishing a uniform and effective force. My military career was transformative in many ways and I in no way would take it back and not make the same choices again - but many things linger after - especially having a quick temper - this has since cooled down after having been out of the Corps for some time. 

All that to say - "Be Kind" has become one of my daily mantras. Sometimes we assume the worst when instead assuming positive intent can place both you and your actions in a better place. We can operate assuming people are doing things to benefit humanity - we can also have a contingency in the event they are not. 

No matter the situation - Be Kind. Kyle Carpenter (Marine Medal of Honor recipient) wrote about interactions that he's had (in his book) with people after the grenade explosion that left him forever changed by scars. Comments from those less fortunate than us on the street and simply the act of assuming positive intent lead to interactions that were themselves positive and inspirational. 

## Choose Violence

Often a joke - and I don't want to associate myself with those who use social media to attack others. Rather I want this to signify the intent to act and execute here, now, and with firm justification. 

Execute - Execute - Execute

Often we become beholden to practices that do nothing but slow progress and innovation down. We see this at all layers of a company - even engineering where I operate day-in. Whether you get bogged down by meetings/process or simply don't see others pulling their own weight. My use of this as my new mantra is:

- Make Decisions promptly as best informed
- Operate with positive intent
- Execute - do the thing

Repeat - and when you hit those blockers - IE code review or some other time commitment - find out how to next best pivot and continue down a new thread.

Code stuck in review? Ping - be direct. No other options available? Execute on that next task with what you know now. Execute on next highest priority for your down. Know what it is you want to accomplish each day and execute. 

Finally instill this proactive behavior in others. Surround yourself with those who are Mission-Focused and you'll find that the progress you can have in a day and the ways you can challenge each-other are mind-boggling.  

## Be Kind - Choose Violence

> ‘Be polite, be professional, but have a plan to kill everybody you meet.’
- General Mattis

Treat others with respect - Assume positive intent - Execute/Execute/Execute

## Nerd Notes - New domain whodis

Likely could have taken an easier route than I did - but for those interested:

I wanted to setup another cloudflared tunnel to understand how I can run many domains and resolve many subdomains all within single clusters if required. Basically modified my Nginx image to be listening for the new domain - added a certificate to my cluster for cert-manager and then deployed a new tunnel to the existing `cloudflare-tunnel` namespace such that the Network Policies still disallow any traffic to go anywhere but the blog namespace. 