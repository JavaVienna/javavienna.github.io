---
layout: event
id: 35
title: "Java under the Hood of Elasticsearch + Look Ma', I made a Website!"
slug: 2022-10-03-java-under-the-hood-of-elasticsearch-look-ma-i-ma
dateDisplay: "Oct 3, 2022 at 18:00"
startDateTime: 2022-10-03T16:00Z
year: 2022
venueType: null
meetupUrl: https://www.meetup.com/java-vienna/events/287658623/
isUpcoming: false
hasDescription: true
talks:
- id: 75
  title: Java under the Hood of Elasticsearch
  description: |-
    Elasticsearch is one of the most widely used Java projects out there. While many people know the REST interface and how to use it, this talk takes a look under the hood and picks up some of the more interesting Java topics there:

    - Why and how Elasticsearch is always bundling the latest JDK with the default binary; also what lessons can be learned from Docker to Java distributions issues.
    - What Java features is Elasticsearch (not) using; also what are the requirements for building / testing and running.
    - While the Java Security Manager served Elasticsearch extremely well for Log4Shell and other security issues, what are the next steps after its deprecation to replace it.
    - Elasticsearch's Gradle setup is a monster but a powerful one — how does it keep the developers productive and what are the most important changes around performance.
  durationMinutes: 45
  talkLanguage: en
  slidesLanguage: en
  speakers:
  - speakerId: 48
    name: Philipp Krenn
    slug: philipp-krenn
    bio: "Philipp lives to demo interesting technology. Having worked as a web, infrastructure,\
      \ and database engineer for over ten years, Philipp is now a developer advocate\
      \ and EMEA team lead at Elastic — the company behind the Elastic Stack consisting\
      \ of Elasticsearch, Kibana, Beats, and Logstash."
    hasBio: true
    photo: https://github.com/xeraa.png
    company: Elastic
    jobTitle: Developer Advocate
    linkedinUrl: https://www.linkedin.com/in/philippkrenn/
    twitter: null
    github: xeraa
    website: null
  resources: []
- id: 76
  title: "Look Ma', I made a Website!: Keycloak, Meetup, Quarkus, Wordpress"
  description: |-
    After last times introduction to Quarkus & Keycloak, we played a little with the technology and created a new website for the Java Vienna Meetup (WIP!).

    (currently planned:) In this talk we will take a look at

    - Running Keycloak in Docker
    - Integrating Keycloak with Meetup
    - how to implement an own Identity Provider for Keycloak in Java
    - how to integrate the own IdP with Keycloak
    - Fetching the basic profile data for Keycloak from Meetup using GraphQL
    - How we integrated Keycloak with Wordpress at no cost
    - First sample app using Quarkus that uses our Keycloak integration
    - HTML-Templating in Quarkus using "qute"
    - maybe something more..
    - ... lets see how much else we can stuff in 1hour.
  durationMinutes: 45
  talkLanguage: en
  slidesLanguage: en
  speakers:
  - speakerId: 4
    name: Dominik Dorn
    slug: dominik-dorn
    bio: "Dominik runs the Java Vienna Meetup since 2010. He has his own company and\
      \ helps clients solve technical challenges on a B2B basis, using Java and S.....\
      \ lets say JVM technologies. Usually he tries to give the stage to others, but\
      \ sometimes just can't help himself by also giving a talk at our meetups. That's\
      \ why you'll hear from him today.. pure ego selfishness and the lust for beer,\
      \ pizza and a few interesting questions during/after the talk ;-)"
    hasBio: true
    photo: /img/3a2da3d3-257a-4f78-b5da-156bd4b7acc4.jpg
    company: greyflower GmbH
    jobTitle: Senior Software Engineer
    linkedinUrl: https://www.linkedin.com/in/dominik-dorn/
    twitter: domdorn
    github: domdorn
    website: null
  resources:
  - id: 393
    type: SLIDES
    url: https://github.com/JavaVienna/2022-10-03_keycloak-meetup-idp/blob/main/2022-10-03_keycloak_meetup_quarkus_wordpress.pdf
    title: Slides
  - id: 394
    type: CODE
    url: https://github.com/JavaVienna/2022-10-03_keycloak-meetup-idp
    title: Code
sponsors:
- companyName: TU Wien
  logo: /img/f66a50d3-7849-47d9-97fd-0660bd61e5e0.jpg
  level: Room Sponsor
  websiteUrl: https://www.tuwien.ac.at
---

Agenda:
18:00 Doors Open
18:25 - 19:30 Java under the Hood of Elasticsearch - Philipp Krenn
19:30 - 19:55 Break, Pizza, Networking
19:55 Raffle
20:00 - 21:00 Look Ma', I made a Website - Dominik Dorn
21:10 Networking nearby
