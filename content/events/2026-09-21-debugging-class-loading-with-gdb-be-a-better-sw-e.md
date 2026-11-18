---
layout: event
id: 92
title: '"Debugging Class Loading with GDB" + "Be a better SW-Eng with AI"'
slug: 2026-09-21-debugging-class-loading-with-gdb-be-a-better-sw-e
dateDisplay: "Sep 21, 2026 at 18:00"
startDateTime: 2026-09-21T16:00Z
year: 2026
venueType: null
meetupUrl: https://www.meetup.com/java-vienna/events/316166116
isUpcoming: false
hasDescription: true
talks:
- id: 169
  title: Debugging Class Loading with GDB
  description: "Have you ever wondered why a particular class was loaded at that exact\
    \ moment? Getting to the bottom of it can be surprisingly hard. I recently encountered\
    \ a bug with a particularly nasty ClassCircularityError in which classes were\
    \ loading unexpectedly, and I needed to figure out what triggered that. In this\
    \ talk, I'll walk through the steps I used to track it down. We'll build a slowdebug\
    \ JVM, attach GDB, and use breakpoints and inspection to identify the precise\
    \ cause of the class loading. If you're curious about how the JVM really works\
    \ and want to peek under the hood, this talk is for you."
  durationMinutes: 60
  talkLanguage: en
  slidesLanguage: en
  speakers:
  - speakerId: 31
    name: Marco Sussitz
    slug: marco-sussitz
    bio: "Marco Sussitz is an engineer at Dynatrace who works at the boundary of Java\
      \ and C++. He writes JVMTI agents, instruments bytecode, and digs into JIT,\
      \ memory, and thread behavior. You'll often find him sorting out class loaders\
      \ or reading the spec longer than he should. Before Dynatrace, he worked on\
      \ cloud video encoding with FFmpeg. In his off hours, he's bouldering or in\
      \ the mountains."
    hasBio: true
    photo: https://github.com/ReneThu.png
    company: dynatrace
    jobTitle: Software Developer
    linkedinUrl: https://www.linkedin.com/in/marco-sussitz-639315172/
    twitter: ""
    github: ReneThu
    website: ""
  resources:
  - id: 334
    type: VIDEO
    url: https://videos.ijug.eu/w/8GVciWkbMBoZapew7RQ9yk
    title: Video
- id: 170
  title: Becoming a Better SW Engineer in the Age of AI
  description: |-
    AI coding tools can produce code quickly, but developers still need to understand the problem, communicate intent, and judge the result. This talk explores how solid engineering practices help us work effectively with AI assistants.

    The first part focuses on thinking before coding: using pen and paper, clarifying requirements, and expressing intent through names, interfaces, and documentation. We'll also discuss choosing the scope of a change and reviewing it critically.

    The second part brings these habits into practice through a Spring Boot demo application built with Codex. I'll walk through a representative change, showing how I described the task, reviewed and corrected the generated code, and verified the result.

    Finally the demo serves a second purpose: demonstrating a simple Markdown structure for providing AI with guidelines, rules, and feature plans. Attendees will leave with a practical approach to organizing context, guiding implementation, and reviewing code, tests, and documentation together.

    Effective AI assistance starts with clear intent and engineering judgment - and developers remain responsible for the software they deliver.
  durationMinutes: 60
  talkLanguage: en
  slidesLanguage: en
  speakers:
  - speakerId: 102
    name: Elias Erkinger
    slug: elias-erkinger
    bio: |-
      Elias Erkinger is a software engineer, consultant, and certified Java and Spring professional. He builds and modernizes enterprise applications with Java, Spring Boot, Angular, and relational databases. His interests include software architecture, clean code, and making complex codebases easier for developers and coding agents to understand.

      His experience with AI-assisted development spans early code-completion tools through to agentic coding with Codex. Along the way, he has built LLM-powered applications and agentic workflows using Spring AI, LangChain, and n8n.

      A regular attendee of developer meetups and conferences, including JavaOne in San Francisco, Elias enjoys exchanging ideas about practical AI engineering and how AI is changing the craft of software development.
    hasBio: true
    photo: /img/3daddde1-3e8c-4949-9f31-bf03519beb05.jpg
    company: ACTIVE SOLUTION GmbH
    jobTitle: Software Developer
    linkedinUrl: https://www.linkedin.com/in/elias-erkinger-812660202/
    twitter: ""
    github: ""
    website: ""
  resources:
  - id: 335
    type: SLIDES
    url: https://github.com/JavaVienna/2026-09-21_better_software_engineer_with_ai/blob/main/presentation.pdf
    title: Slides
  - id: 336
    type: CODE
    url: https://github.com/JavaVienna/2026-09-21_better_software_engineer_with_ai
    title: Code
  - id: 337
    type: VIDEO
    url: https://videos.ijug.eu/w/mdDeEntWshZYGE9tXChJyy
    title: Video
sponsors:
- companyName: dynatrace
  logo: https://secure.meetupstatic.com/photos/sponsor/a/5/0/6/iab120x90_2742246.jpeg
  level: Diamond
  websiteUrl: https://dynatrace.com
- companyName: Posedio GmbH
  logo: /img/1d5fcaba-89c1-4521-8986-871767af23c7.jpg
  level: Gold
  websiteUrl: https://posedio.com
---

Agenda:
18:00 doors open
18:20 doors close
18:20 Welcome
18:30 Debugging Class Loading with GDB - Marco Sussitz / dynatrace
19:30 break
19:55 Raffle
20:00 How to Become a Better Software Engineer with AI - Elias Erkinger / ActiveSolution
21:15 Networking nearby
