---
layout: event
id: 32
title: Logging Considered Harmful? & OpenTelemetry for Java
slug: 2022-12-05-logging-considered-harmful-opentelemetry-for-java
dateDisplay: "Dec 5, 2022 at 18:00"
startDateTime: 2022-12-05T17:00Z
year: 2022
venueType: null
meetupUrl: https://www.meetup.com/java-vienna/events/287658687/
isUpcoming: false
hasDescription: true
talks:
- id: 71
  title: Logging Considered Harmful?
  description: |-
    One thing that enterprise Java applications have in common, regardless of their framework, is that they produce logs — allegedly human-readable lines of strings that aim to help us to debug, trace, or otherwise inspect what's going on. The question is, how useful are these logs and do they help us solve problems that actually happen, and whether there are better alternatives for the average developer.

    In this talk we'll see the shortcomings that logging brings, with regards to performance, dependencies, log formats, and helpfulness. We'll try to get a feeling for the impact logging has, why developers do use logging in the first place, and what alternatives and conclusions are there.
  durationMinutes: 45
  talkLanguage: en
  slidesLanguage: en
  speakers:
  - speakerId: 37
    name: Sebastian Daschner
    slug: sebastian-daschner
    bio: "Sebastian Daschner is a self-employed Java consultant, author and trainer\
      \ and is enthusiastic about programming and Java. He is the author of the book\
      \ “Architecting Modern Java EE Applications”. Sebastian is participating in\
      \ open source standardization processes such as the JCP or the Eclipse Foundation,\
      \ helping forming the future standards of Enterprise Java, and collaborating\
      \ on various open source projects. For his contributions in the Java community\
      \ and ecosystem he was recognized as a Java Champion, Oracle Developer Champion,\
      \ and JavaOne Rockstar. Besides Java, Sebastian is a heavy user of cloud native\
      \ technologies and anything related to enterprise software. Sebastian evangelizes\
      \ computer science practices on https://blog.sebastian-daschner.com, in his\
      \ newsletter, podcast, and videos, and on Twitter via @DaschnerS. Sebastian\
      \ kickstarted the JOnsen and jSpirit unconferences that connect Java developers\
      \ throughout the globe. When not working with technology, he also loves coffee\
      \ and to travel the world."
    hasBio: true
    photo: https://github.com/sdaschner.png
    company: Fairsource
    jobTitle: Chief Technology Officer
    linkedinUrl: https://www.linkedin.com/in/sebastian-daschner-9894bb103/
    twitter: DaschnerS
    github: sdaschner
    website: https://www.sebastian-daschner.com
  resources:
  - id: 386
    type: SLIDES
    url: https://github.com/JavaVienna/2022-12-05_logging_considered_harmful/tree/main/logging-considered-harmful
    title: Slides
  - id: 387
    type: CODE
    url: https://github.com/javavienna/2022-12-05_quarkus-logging-comparison
    title: Source Code
- id: 72
  title: OpenTelemetry for Java
  description: |-
    OpenTelemetry is the hot new standard for getting telemetry data from your Java applications (and others). This talk covers three areas:

    - Standards: OpenTracing, W3C Trace-Context, and OpenTelemetry
    - Signals: Both what (traces, metrics, logs) and how (instrumentation, OTLP)
    - Demo: Making it work and where the boundary is between OpenTelemetry and vendors
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
      \ of Elasticsearch, Kibana, Beats, and Logstash. Based in Vienna, Austria, he\
      \ is constantly traveling Europe and beyond to speak and discuss open source\
      \ software, search, databases, infrastructure, and security."
    hasBio: true
    photo: https://github.com/xeraa.png
    company: Elastic
    jobTitle: Developer Advocate
    linkedinUrl: https://www.linkedin.com/in/philippkrenn/
    twitter: null
    github: xeraa
    website: null
  resources:
  - id: 388
    type: SLIDES
    url: https://github.com/JavaVienna/2022-12-05_opentelemetry_for_java/blob/main/on-the-bleeding-edge-of-open-telemetry.pdf
    title: Slides
  - id: 389
    type: CODE
    url: https://github.com/javavienna/2022-12-05_opentelemetry_for_java_code
    title: Source Code
sponsors:
- companyName: TU Wien
  logo: /img/f66a50d3-7849-47d9-97fd-0660bd61e5e0.jpg
  level: Room Sponsor
  websiteUrl: https://www.tuwien.ac.at
---

Agenda:

18:00 doors open
18:30 Talk 1: **Logging Considered Harmful?** (Sebastian Daschner, EN)
19:30 Break with Pizza
20:00 Talk 2: **OpenTelemetry for Java** (Philipp Krenn, EN)
