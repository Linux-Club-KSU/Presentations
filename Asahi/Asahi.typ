/*
Mac+Linux Slides for the LCKSU
- Initial Draft by JEvan234,
- Open to suggestions/pull requests by LCKSU members

*/

// Import for formatting
#import "@preview/slydst:0.1.5": *

// Init + config title page
#show: slides.with(
  title: "Running Linux on Modern Mac",
  subtitle: "A Quick History + Discussion",
  date: none,
  authors: ("Linux Club at KSU (LCKSU)",),
  layout: "medium",
  ratio: 4/3,
  title-color: none,
  subslide-numbering: none,
)

// Custom color rules
#show link: set text(fill: blue, style: "italic")

// Content
== Linux On Mac Pre-2020
- With _intel-based_ mac, installing linux is almost like any old windows machine
- Minus some slight bios differences, just download the amd64 or x86 installer and have fun!
- With the introduction of the M-Series chips (November 2020) there was no way to get linux running on the closed-source architecture

== But there was HOPE!
- The #link("https://asahilinux.org/")[Asahi Linux Project] introduced linux support through _reverse engineering_
- This project does not steal any of apple's code, making the project less likely to be taken down (some apple engineers even support it)
- It is *not* perfect, only supporting up to the M3 (not ultra) chip

== The Installing Process
- Simply go to their website and run the script on any mac you want to convert
- This process is a duel boot (due to some drivers/bios functions locked to MacOS)
- Must have over 64GB Free on the internal drive
- Simply pick your distro (I recommend the default fedora) and get rolling

== Drawbacks
- Some apps struggle to run because of the architechture differences
- Apps from the asahi store seem to run best, but be sure to keep the machine updated religously
- Any others you can think of?

== The Big Pro
- With this year being the last year of intel support (2019 models), naturally the M1 chip is next in line
- Projects like these can keep these devices relevant for years after apple drops them.
- Any other advantages?

== Any Questions?
About the Slides

== Some Housekeeping
- We should be in this room, *J2112* the rest of the semester
- Within the next 2 weeks the schedule will be finalized from the poll (*GO VOTE*)
- The top contenders will be presented first, with a possible runoff poll for the leftover topics (lots of ties, keep an eye out)
- Next 3 meetings part of a "mini-series", _starting with distros_