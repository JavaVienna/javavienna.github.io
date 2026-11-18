---
layout: event
id: 36
title: High Performance Spring Boot 3 on AWS Lambda
slug: 2025-06-16-high-performance-spring-boot-3-on-aws-lambda
dateDisplay: "Jun 16, 2025 at 16:00"
startDateTime: 2025-06-16T14:00Z
year: 2025
venueType: physical
meetupUrl: https://www.meetup.com/java-vienna/events/305897281/
isUpcoming: false
hasDescription: true
talks:
- id: 12
  title: High performance Serverless Java on AWS
  description: |-
    Java is for many years one of the most popular programming languages, but it used to have hard times in the Serverless community. Java is known for its high cold start times and high memory footprint, comparing to other programming languages like Node.js and Python. In this talk I'll look at the general best practices and techniques we can use to decrease memory consumption and cold start times for Java Serverless applications on AWS Lambda including GraalVM (Native Image) and AWS own offering SnapStart based on Firecracker microVM snapshot and restore and CRaC (Coordinated Restore at Checkpoint) runtime hooks. We'll also look into the SnapStart priming techniques which help us increase the Lambda performance and explore how AWS Lambda Profiler for Java can help us identify this potential. We'll also explore the impact of the SnapStart snapshot tiered low-latency cache on the cold start times.

    I'll also provide Lambda functions performance (cold and warm start times) benchmarking for:

    - Deployment package sizes
    - Lambda memory settings
    - Java compilation options
    - Managing Lambda dependencies with Lambda layers
    - Choice of garbage collection algorithm
    - Choice of hardware architecture x86 vs arm64
    - HTTP (a)synchronous clients
  durationMinutes: 45
  talkLanguage: en
  slidesLanguage: en
  speakers:
  - speakerId: 1
    name: Vadym Kazulkin
    slug: vadym-kazulkin
    bio: "Vadym Kazulkin is AWS Serverless Hero and Head of Development at ip.labs\
      \ GmbH, a 100% subsidiary of the FUJIFILM Group, based in Bonn. Vadym has been\
      \ involved with the Java ecosystem for over twenty years. His focus and interests\
      \ currently include the design and implementation of highly scalable and available\
      \ applications in AWS Cloud with the special passion for Serverless. Vadym is\
      \ also the co-organizer of the Java User Group Bonn meetup and a frequent speaker\
      \ at various Meetups and conferences."
    hasBio: true
    photo: https://github.com/Vadym79.png
    company: ip.labs GmbH
    jobTitle: Head Of Development
    linkedinUrl: https://www.linkedin.com/in/vadymkazulkin/
    twitter: VKazulkin
    github: Vadym79
    website: ""
  resources:
  - id: 244
    type: SLIDES
    url: https://github.com/JavaVienna/2025-06-16_java_serverless_springboot_aws/blob/main/High%20performance%20Serverless%20Java%20on%20AWS-AWS%20and%20Java%20User%20Group%20Vienna%202025.pdf
    title: Slides
- id: 13
  title: "How to develop, run and optimize Spring Boot 3 application on AWS Lambda"
  description: |-
    In this talk I will present and compare several options of how to run Spring Boot 3 application on AWS Lambda using the following framework or tools:

    - AWS Serverless Java Container
    - AWS Lambda Web Adapter
    - Spring Cloud Function
    - Custom Docker Image.

    I'll also discuss strategies how to optimize cold start of such Lambda function with AWS Custom Lambda Runtime based on GraalVM Native Image and AWS own offering SnapStart based on Firecracker microVM snapshot and restore and CRaC (Coordinated Restore at Checkpoint) runtime hooks. Moreover I'll present various (SnapStart) priming techniques to reduce the cold start even further and explain the benefits of the snapshot tiered cache. Is Spring Boot native support of CRaC also a potential optimization? I'll also discuss optimization strategies for the warm start/execution time of the Lambda function.
  durationMinutes: 45
  talkLanguage: en
  slidesLanguage: en
  speakers:
  - speakerId: 1
    name: Vadym Kazulkin
    slug: vadym-kazulkin
    bio: "Vadym Kazulkin is AWS Serverless Hero and Head of Development at ip.labs\
      \ GmbH, a 100% subsidiary of the FUJIFILM Group, based in Bonn. Vadym has been\
      \ involved with the Java ecosystem for over twenty years. His focus and interests\
      \ currently include the design and implementation of highly scalable and available\
      \ applications in AWS Cloud with the special passion for Serverless. Vadym is\
      \ also the co-organizer of the Java User Group Bonn meetup and a frequent speaker\
      \ at various Meetups and conferences."
    hasBio: true
    photo: https://github.com/Vadym79.png
    company: ip.labs GmbH
    jobTitle: Head Of Development
    linkedinUrl: https://www.linkedin.com/in/vadymkazulkin/
    twitter: VKazulkin
    github: Vadym79
    website: ""
  resources:
  - id: 245
    type: SLIDES
    url: https://github.com/JavaVienna/2025-06-16_java_serverless_springboot_aws/blob/main/How%20to%20develop%2C%20run%20and%20optimize%20Spring%20Boot%203%20application%20on%20AWS%20Lambda-AWS%20and%20Java%20User%20Group%20Vienna%202025.pdf
    title: Slides
sponsors:
- companyName: dynatrace
  logo: https://secure.meetupstatic.com/photos/sponsor/a/5/0/6/iab120x90_2742246.jpeg
  level: Diamond
  websiteUrl: https://dynatrace.com
- companyName: Posedio GmbH
  logo: /img/1d5fcaba-89c1-4521-8986-871767af23c7.jpg
  level: Gold
  websiteUrl: https://posedio.com
- companyName: bitpanda
  logo: https://secure.meetupstatic.com/photos/sponsor/b/f/d/9/iab120x90_2749113.jpeg
  level: Gold
  websiteUrl: https://bitpanda.com
- companyName: TU Wien
  logo: /img/f66a50d3-7849-47d9-97fd-0660bd61e5e0.jpg
  level: Room Sponsor
  websiteUrl: https://www.tuwien.ac.at
---

Joint meetup with [AWS Vienna Meetup](https://www.meetup.com/amazon-web-services-aws-vienna/) !

Agenda

18:00 doors open
18:20 welcome
18:30 High performance Serverless Java on AWS - Vadym Kazulkin
19:30 Break
19:55 Raffle
20:00 How to develop, run and optimize Spring Boot 3 application on AWS Lambda - Vadym Kazulkin
21:15 Networking nearby
