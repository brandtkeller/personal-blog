---
title: "Treadmill Experiment - where is my data?"
date: 2023-11-09T05:30:00-07:00
tags: ["Wellbeing", "Experiment", "treadmill"]
series: "Wellbeing"
draft: false
---

![]()

Knowing that I wanted to have data about my use of the treadmill to backup my claims about how I perceived using it day-to-day was one of my goals. Another being, that as a cyclist and general [Strava](strava.com) user, I knew that I already had the platform available for storing my data as well as had seen API access available (but had never used it before).

Now it was a matter of piecing the pipeline together.

## Treadmill Support

Many treadmills do not support broadcasting data about your session to applications. Maybe some higher end treadmills do, but the market is even-slimmer for an under-desk treadmill that would broadcast data like your speed/distance/steps/ etc.

This would be hurdle #1


## Houston We Have a Problem
Indoor walking isn't supported? what do you mean? 

I ride my bike indoors 3+ times a week and Strava has no issue with recording my results from an application. Strava application also allows you to conduct other indoor exercises - why is a treadmill not supported?

This would be hurdle #2

## The Solution

Given that my total cost on the treadmill to-date was $10 in total, I looked for options that could solve for my previous hurdles. There were some options available:
- A foot pod that attaches to your shoe
- A device that reads the belt speed and broadcasts the data

North Pole Engineering makes a [Runn](https://npe.fit/products/runn) smart treadmill sensor that fits the exact problem I had. Also it was on sale for %15 at $85 at the time I purchased it.

## Installation

The sensor attaches to the base and uses an optical sensor of some sort to measure belt speed using small reflective strips attached to the belt. 

## Application Support

Surprisingly this was a real problem. I tried a variety of applications but had honestly expected Strava to allow me to connect my treadmill sensor to the application during a "walk" activity - but it did not. 

North Pole Engineering has a [GymTrakr](https://npe.fit/blogs/news/gymtrakr-app-now-available?gclid=CjwKCAjwkNOpBhBEEiwAb3MvvS1Z9yMW6pdKBTev-vjrezC13mTwTmWodN5SnxY4VQLiSiByt3VNixoCwCkQAvD_BwE) application that is/has been broken on Android since mid-september when I reported the issue. On a positive note, the team did respond in a timely manner and mentioned looking into the solution.

The Gymtrakr did work on iOS and this is what I use currently. 

## End to End

Now when I am gearing up for a walk:
- Pull the treadmill out from underneath my desk
- Turn the treadmill on
- Turn the sensor on
- Connect the application to the sensor and `start workout`
- Walk
- Finish workout and upload the result to Strava

## Conclusion

Hardware is now solved for this area of my fitness data aggregation. The last piece? Getting the data out and processing for quickly visualizing and analyzing. This is the fun part and got to dig into the API at a high level.

Stay tuned!
