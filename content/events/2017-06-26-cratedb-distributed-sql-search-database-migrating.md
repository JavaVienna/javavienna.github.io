---
layout: event
id: 39
title: CrateDB Distributed SQL & Search Database; Migrating from SQL to NoSQL
slug: 2017-06-26-cratedb-distributed-sql-search-database-migrating
dateDisplay: "Jun 26, 2017 at 18:00"
startDateTime: 2017-06-26T16:00Z
year: 2017
venueType: null
meetupUrl: https://www.meetup.com/java-vienna/events/240607494/
isUpcoming: false
hasDescription: true
talks:
- id: 130
  title: "Intro to CrateDB: Distributed SQL & Search Database"
  description: |-
    Having stepped into a data-driven era, we have to reexamine our technical architectures and start innovating in order to accommodate the large amounts of data we have to process and store in near real time. Tasks regarding reliability and availability have suddenly invaded our backlogs and spare time.

    There were a few stages in this transition moving from "Shard the data store" towards "We'll just keep in sync several specialised sharded and replicated systems". Architectures quickly became complex even though the business problems we are solving are mostly the same. Reasoning about our system's behaviour usually involves a trip to the closest whiteboard as there are more and more moving parts in our storage and services layers. The tradeoffs we make are mostly around sacrificing usability in favour of scalability and reliability. Looking at our storage layers today, it's very easy to store large amounts of data but rather difficult to query it in various formats and aggregations.

    Business requirements regarding finding, analyzing, and processing data and events surface in most products. We need to be able to retrieve the data we so easily persist without asking the user to provide the (primary) key (a hieroglyphic and a unicorn), nor have to migrate the data into other various systems that provide search capabilities.

    CrateDB is a storage solution that scales horizontally on commodity hardware and enables SQL capabilities in order to store and query structured and unstructured data. With applications in various domains as IoT, sensors data, log analytics and time series data, CrateDB not only stores large amounts of data, but also helps you make sense of that data. Using the expressiveness of the SQL language and the underlying engine scalability CrateDB can fill in the current gap architecture gap that between storing and retrieving data.
  durationMinutes: 45
  talkLanguage: en
  slidesLanguage: en
  speakers:
  - speakerId: 81
    name: Andrei Dan
    slug: andrei-dan
    bio: "Andrei Dan is the core developer for Crate.io ( https://crate.io/ ), where\
      \ they've built CrateDB, a distributed sql database for machine data."
    hasBio: true
    photo: https://github.com/andreidan.png
    company: crate.io
    jobTitle: Core Developer
    linkedinUrl: null
    twitter: null
    github: andreidan
    website: null
  resources:
  - id: 430
    type: VIDEO
    url: https://videos.ijug.eu/w/87DQZqSZHQvzmbMjfM8nz3
    title: Video
- id: 131
  title: "Migrating from SQL to NoSQL: Remedying the Challenges of Migrating Oracle/Postgres/SQL\
    \ to MongoDB/NoSQL"
  description: |-
    This is the dark and terrible tale of a migration from an relational SQL database, an RDBMS like Oracle or Postgres, to NoSQL with MongoDB. The battles were fought by those unwilling or unable to learn Mongo’s query language. The trials we faced feeding Mongo back through a SQL data warehouse. The tears shed. The lives lost (well, virtual-lives lost, lol.)

    In this session, we will look at how using a scalable SQL database with full text search would have solved all of the most-challenging aspects of SQL-to-NoSQL migration.
  durationMinutes: 45
  talkLanguage: en
  slidesLanguage: en
  speakers:
  - speakerId: 82
    name: Marios Trivyzas
    slug: marios-trivyzas
    bio: "Marios Trivyzas is a core developer for Crate.io ( https://crate.io/ ),\
      \ where they’ve built CrateDB, a distributed sql database for machine data."
    hasBio: true
    photo: https://github.com/matriv.png
    company: crate.io
    jobTitle: Core Developer
    linkedinUrl: https://www.linkedin.com/in/marios-trivyzas-5629b374/
    twitter: null
    github: matriv
    website: null
  resources:
  - id: 431
    type: VIDEO
    url: https://videos.ijug.eu/w/bdYFeYS8EdTphE8R8w4FiB
    title: Video
sponsors:
- companyName: TU Wien
  logo: /img/f66a50d3-7849-47d9-97fd-0660bd61e5e0.jpg
  level: Room Sponsor
  websiteUrl: https://www.tuwien.ac.at
---

Agenda:

* 18:00 Doors open
* 18:30 - 19:30 Intro to CrateDB
* 19:30 - 20:00 Networking w/ food + beer
* 20:00 - 21:00 Remedying the Challenges of Migrating Oracle/Postgres/SQL to MongoDB/NoSQL
