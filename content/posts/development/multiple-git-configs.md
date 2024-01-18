---
title: "Commit Signing - with many personalities"
date: 2024-01-18T05:30:00-07:00
tags: ["Git", "Development", "OpenSource"]
series: "Development"
draft: true
---

![]()

# Commit Signing
Let's start with `WHY?`

[Neat article on this topic](https://withblue.ink/2020/05/17/how-and-why-to-sign-git-commits.html) - [FBI Warning](https://www.zdnet.com/article/fbi-warns-about-ongoing-attacks-against-software-supply-chain-companies/)

The article above lays out a few Supply Chain Security attacks that are applicable to software development. The TLDR is that - without signing your commits - there are ways to impersonate your github account through fairly trivial means. This is a pretty scary thought - impersonation is a pretty simple social engineering attack that could result in someone letting down their defenses when they otherwise shouldn't - or worse - attributing some known bad code to someone else in an attempt to degrade their reputation. 

Hence why we can both setup signing on our own commits AND setup projects to require signed commits. 

## Multiple Personalities Git configs
Now that we've established the WHY around commit signing - I wanted to hit another topic before we get to the HOW.

The use of a single git account for many purposes is not unknown - hence why we have organizations in platforms such as GitHub. As such, we may be doing a variety of different activities - from official work to hobbies to personal contributions to Open Source project. If we only had one git configuration, then everything we signed would be with our default email and signing key, and this may be attributing your work on say - a game server - to your company (if that were your default). 

OR WORSE - by simply connecting your company name to changes you provided to an "Open Source" project - the owner/maintainer may see that company affiliation and cause a scene.

## Automating the Switch
So instead, we can setup our development containers/machines with Git to be configured with multiple accounts - but we know the inevitable downfall will be our git muscle memory kicking in and forgetting to switch manually - so we automate.

[This Article](https://filipe.kiss.ink/multiple-gpg-keys-git/) does a great job capturing the nitty-gritty details - if you can't tell already - I always choose to reference a source of truth or author that I got the information from when I can.

Here is the HOW around all of this at a high level (How I do this personally):

First I thought about how I wanted to arrange my work and how I might expand on the above article in the future. I started with a default:

Use my personal email for everything globally
Use my company email for everything underneath a specific path
I made sure that I had both personal and company email setup in my GitHub settings. I made sure to have generated keys that have information pertaining to each email (See the authors other article for information).

Lastly I create a directory to house my development that I wanted attributed to my company email/key in my home directory.
 

```
/Users
  /brandtkeller
    /repos
      /defenseunicorns
```

Globally my git configuration was setup to use my personal email - but if you look at the bottom of my .gitconfig. - you'll see:

```
[includeIf "gitdir:~/repos/defenseunicorns/"]
	path = ~/.gitconfig-unicorn
```

 which then specifies that any git actions that I conduct from within `~/repos/defenseunicorns` should use my identifying information as specified in `~/.gitconfig-unicorn`
 

## Results

Anytime I work from my defenseunicorns directory with git - git automatically signs with the correct information. If it's a project that I do not want attributed to the company - then I place it anywhere else. These includeIf directives in git allow for extensible workflows for using specific git accounts for specific platforms. 

If any of this is wrong or actually establishes a less-secure baseline - please let me know so we can document appropriately and learn as a collective.
