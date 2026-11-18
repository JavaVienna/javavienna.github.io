---
layout: event
id: 97
title: "\"TornadoVM: GPU Accelerated Java\" +\"Drive your UI with AI\""
slug: 2026-12-03-tornadovm-gpu-accelerated-java-drive-your-ui-with
dateDisplay: "Dec 3, 2026 at 18:00"
startDateTime: 2026-12-03T17:00Z
year: 2026
venueType: null
meetupUrl: https://www.meetup.com/java-vienna/events/316166142
isUpcoming: true
hasDescription: true
talks:
- id: 167
  title: "TornadoVM: Bringing GPU Acceleration to Java, from Kernels to LLMs"
  description: |-
    GPUs and other accelerators do most of the heavy lifting in modern computing, yet Java developers have mostly had to reach them through native libraries or by switching languages. TornadoVM (www.tornadovm.org) changes that. It’s an open-source plugin for OpenJDK and GraalVM that compiles Java code at runtime for GPUs and other accelerators, targeting CUDA, OpenCL and Apple Metal.

    This talk is a tour of what TornadoVM can do. We’ll cover its programming model and how to express parallelism in plain Java with annotations or the Kernel API. Then we’ll look under the hood at how TornadoVM builds task graphs, generates and specializes kernels at runtime, and manages data movement between host and device. We’ll also show how the same code runs on hardware from different vendors. Along the way we’ll discuss performance: what speedups are realistic, which workloads fit well, and how to tune them.

    As a use case, we’ll look at jitLLM (jitllm.io), which runs large language model inference in Java on top of TornadoVM. It shows how TornadoVM’s capabilities come together in a real, demanding AI workload. You’ll leave knowing how to move compute-heavy Java code onto accelerators and where the platform is heading.
  durationMinutes: 60
  talkLanguage: en
  slidesLanguage: en
  speakers:
  - speakerId: 101
    name: Christos Kotselidis
    slug: christos-kotselidis
    bio: "Christos Kotselidis is an Associate Professor at The University of Manchester\
      \ and co-founder of Beestream.ai. His research covers hardware/software co-designed\
      \ CPUs and virtual machines, heterogeneous acceleration, and compilers and virtual\
      \ machines, including where they meet AI. He leads the TornadoVM and jitLLM\
      \ projects and is the technical coordinator of the Horizon Europe/UKRI AERO\
      \ project."
    hasBio: true
    photo: /img/7876cbf6-eedb-4fa3-815b-dd7447fb9b46.jpg
    company: null
    jobTitle: null
    linkedinUrl: https://www.linkedin.com/in/kotselidis/
    twitter: ""
    github: ""
    website: ""
  resources: []
- id: 168
  title: From Java to AI-Assisted Web UIs with Vaadin
  description: |-
    In recent years, the development of web applications has changed significantly with the introduction of Typescript and many different web frameworks. Modern web applications combine diverse technologies, process extensive data and user interactions, and can run as native applications on various end devices. In this context, Vaadin Flow presents itself as an efficient alternative for developing complex web applications, allowing seamless use of modern web technologies with Java. The framework comes with a library of easily customizable WebComponents, an intuitive Java API, and automated server-browser communication. With Vaadin Flow, developers can create full-stack web applications entirely in Java without having to learn the complexities of HTML, Typescript/JavaScript, and CSS.

    In my talk, I will introduce Vaadin, and show the core features of Flow as well as our extensive component library. In a demo, I will give a small hands-on introduction to the framework, and in addition to its customizability, show how easily Java developers can implement modern web applications.

    Building on this foundation, we will explore how AI can become an active assistant within the UI. Using natural language and server-side tool calling, users can filter data, populate forms, and navigate workflows. I will demonstrate how Vaadin’s server-side Java architecture connects an LLM to defined application actions while preserving business rules and keeping users in control.
  durationMinutes: 60
  talkLanguage: en
  slidesLanguage: en
  speakers:
  - speakerId: 7
    name: Sebastian Kühnau
    slug: sebastian-kuhnau
    bio: "Sebastian Kühnau has been a Java junkie for over two decades and fell in\
      \ love with Vaadin during his university days. Since 2016, he has held various\
      \ roles at Vaadin, helping customers build tailored web applications and leading\
      \ workshops and training sessions. He also supports the community and travels\
      \ from conference to conference as a speaker, sharing his knowledge and enthusiasm\
      \ for Vaadin. When he’s not at a conference or experimenting with AI, he enjoys\
      \ surfing. Where and how? Ask him!"
    hasBio: true
    photo: https://github.com/SebastianKuehnau.png
    company: Vaadin
    jobTitle: Senior Developer Advocate
    linkedinUrl: https://www.linkedin.com/in/sebastian-kuehnau-2b733b13/
    twitter: ""
    github: SebastianKuehnau
    website: ""
  resources: []
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
18:20 doors closed, welcome
18:30 TornadoVM: Bringing GPU Acceleration to Java, from Kernels to LLMs - Christos Kotselidis
19:30 break
19:55 raffle
20:00 From Java to AI-Assisted Web UIs with Vaadin - Sebastian Kühnau
21:00 - .. networking
