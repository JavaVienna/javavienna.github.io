---
layout: event
id: 53
title: '"Let''s Develop on Prod w/ Istio + K8s" + "Blaze-Persistence GraphQL Support"'
slug: 2019-12-16-let-s-develop-on-prod-w-istio-k8s-blaze-persisten
dateDisplay: "Dec 16, 2019 at 18:00"
startDateTime: 2019-12-16T17:00Z
year: 2019
venueType: null
meetupUrl: https://www.meetup.com/java-vienna/events/263596528/
isUpcoming: false
hasDescription: true
talks:
- id: 99
  title: Let's develop on Prod with Istio & Kubernetes
  description: |-
    Do you have confidence that your Test and Stage environments reflect reality? Are they easy to keep up-to-date with production? Can you reproduce production failure in these environments or locally? What about that error you keep seeing on production that’s never occurring on Test or Stage?

    It's been always hard to test new functionality before it reaches production. Even more so, with the shift from a monolith to microservices and increasing scale. Can you still spin up the entire solution on your laptop to debug and test a suspicious piece of code? Testing on production is no longer a meme. It’s reality and a necessity.

    Let's talk about how we can leverage Istio and Kubernetes or Openshift to be confident that changes won't blow up your production cluster and your users won’t even notice a glitch.

    Join this session to learn how to safely develop and test your services in a real production environment. Leave with tools and techniques you can apply right away and with confidence!
  durationMinutes: 45
  talkLanguage: en
  slidesLanguage: en
  speakers:
  - speakerId: 66
    name: Bartosz Majsak
    slug: bartosz-majsak
    bio: "Bartosz Majsak writes code for fun and profit while proudly wearing a red\
      \ fedora working at Red Hat. As a long-time open source contributor and conference\
      \ speaker, he shares his passion for programming and testing methodologies.\
      \ One thing that perhaps proves he is not a total geek is his addiction to alpine\
      \ skiing."
    hasBio: true
    photo: https://github.com/bartoszmajsak.png
    company: Red Hat
    jobTitle: Principal Software Engineer
    linkedinUrl: https://www.linkedin.com/in/bartoszmajsak/
    twitter: null
    github: bartoszmajsak
    website: null
  resources: []
- id: 100
  title: Blaze-Persistence GraphQL Support
  description: |-
    GraphQL is getting more popular every day! More and more UI developers demand a GraphQL interface so that they can do their work without wasting time on communication with the backend team. There are solutions that allow exposing the whole JPA model, but doing that is rarely advisable. Using annotations to exclude certain attributes or registering a special data fetcher to fetch attributes requires manual wiring and is neither comfortable nor does it work well with the declarative schema approach.

    Aren't GraphQL types just DTOs which we have written before? In many ways that is true, but to improve performance, it is vital to make use of the GraphQL selection list feature to avoid loading unnecessary data. When it comes to pagination, the GraphQL Relay spec provides guidance, but defining all the required types and implementing the cursor pagination manually seems like a daunting task that should be done by a library.

    Fortunately, Blaze-Persistence with Entity Views already solves all the underlying problems and comes to rescue. Thanks to the latest addition, the GraphQL integration, which also implements schema generation for the Relay spec, it is now easier than ever to provide a high performance GraphQL interface with minimal and mostly declarative code!

    Join the talk and see for yourself how the Blaze-Persistence GraphQL integration will change your life!
  durationMinutes: 45
  talkLanguage: en
  slidesLanguage: en
  speakers:
  - speakerId: 27
    name: Christian Beikov
    slug: christian-beikov
    bio: "Christian Beikov works with Java EE since 2010 and has lots of experience\
      \ with CDI and JPA. He works part time at Curecomp GmbH in Linz in R&D and is\
      \ about to enter his final semester at the University of Technology Vienna.\
      \ While always being an active Hibernate contributor and constantly improving\
      \ Blaze-Persistence, he gained experience doing freelancing and being a co-founder\
      \ of Sweazer GmbH. His main interests are around distributed systems, database\
      \ technologies and everything Java/JVM-related."
    hasBio: true
    photo: https://github.com/beikov.png
    company: null
    jobTitle: null
    linkedinUrl: https://www.linkedin.com/in/christian-beikov/
    twitter: null
    github: beikov
    website: null
  resources:
  - id: 411
    type: SLIDES
    url: https://github.com/JavaVienna/2019-12-16_blaze_persistence_graphql/blob/main/2019-12-17_blaze-persistencegraphql-highperformancequeryingandrelaypagination16-191217075945.pdf
    title: Slides
sponsors:
- companyName: TU Wien
  logo: /img/f66a50d3-7849-47d9-97fd-0660bd61e5e0.jpg
  level: Room Sponsor
  websiteUrl: https://www.tuwien.ac.at
---

December Meetup - Save the Date!

Agenda:
18:00 Doors open
18:20 - 19:30 Talk 1: Let’s develop on Prod! Wait! What?!
19:30 - 20:00 Break, Pizza, Beer, Raffle
20:00 - 21:00 Talk 2: Blaze-Persistence GraphQL Support
