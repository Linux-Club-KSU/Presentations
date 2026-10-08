/*
Self Hosting Slides for the LCKSU
- Initial Draft by JEvan234,
- Open to suggestions/pull requests by LCKSU members

*/

// Import for formatting
#import "@preview/slydst:0.1.5": *

// Init + config title page
#show: slides.with(
  title: "Self-Hosting",
  subtitle: "Why We Need It + A Setup Guide",
  date: none,
  authors: ("Linux Club at KSU (LCKSU)",),
  layout: "medium",
  ratio: 4/3,
  title-color: none,
  subslide-numbering: none,
)

// Custom color rules
#show link: set text(fill: blue, style: "italic")

= Please save questions and comments until the end (If you must talk, do it outside)

// Content
== What is Self-Hosting?
- Self-Hosting is the idea of providing yourself with services that are typically cloud-only or behind a subscription lock
- Typically, this means running a lightweight linux distribution on a seperate (non-daily driver) machine, and accessing those services over the network.
- For this presentation, we will be examining an ssh debian setup.

= Why Self Host? \ #text(0.6em, style: "italic")[How much do you think families spend on online services monthly?]

== Why Self Host
- Cost: The average family spends over \$300 on monthly subscriptions (that is up \$90 from our April presentation)
- Reliability: 80% of datacenters have had _at least one_ outage in the last 3 years
- Privacy: 62% of american companies have had at least _some_ data leak *in the past year alone*
  - _Personal Experience_: Old HS grading system got leaked, all of my transcripts, teacher info, and even SSN got leaked

== The Setup Today
- Debian Server, SSH only
- Older Intel-based machine
- 20Gb of DDR3
- Cost me 40 bucks all-in

//insert pic of machine

== Docker
- After installation and accessing my machine over the network, I set up a few docker containers

- Docker lets you sandbox/containerize different services, this helps with:
  - Security
  - Dependencies
  - Port mappings (Different sevices using same ports)
- Docker helps solve the "works on my machine" syndrome.

#align(center)[#image("assets/docker-logos/SVG/docker-logo-ocean-blue.svg")]

== Docker
#align(center)[#image("assets/DockerPS1.png")]

- Container ID = ID of the individual container (Hex String)
- Image = What where the source is from
- Command = What docker uses to start the container
- Created = When the container was created
- Status = Shows time up/down

== Accessing a service
- Generally speaking, once the service is up, you can access it by \ 
``` <your-server-ip>:<port>```
- Follow the services guide for initial login
- It is best practice to change passwords from defaults
#align(center)[#image("assets/DockerPS2.png")]

== Accessing a Service (Improved)
- DNS for mapping a name to an IP
- Reverse Proxy for mapping that name to a port

//drop in example graph

== Accessing Ports over the Internet
- There are a few ways to do this:
  - VPN service like Tailscale
  - Cloudflare Tunnelling
  - Port Forwarding

- Understand that there is inherent risk with hosting things to the internet, and making things publicly accessable
- For smaller groups, I use tailscale

= Questions?

= Announcements

= The Topic has now concluded \ Thank you!